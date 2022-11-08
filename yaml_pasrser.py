import yaml


file = input("please input the yaml file name \n")


with open(file+".yaml", "r") as stream:
    try:
        yaml_data =  yaml.safe_load(stream) 
    except yaml.YAMLError as exc:
        print(exc)

for k,v in yaml_data.items() :
    print (k + ":"  ,v)    

print('\n')
key = input("enter the key you want to edit or add : ")
value  = input("enter the value for the key : ")
try:
    value = eval(value)
except:
    pass

yaml_data[key] = value  

with open(file+".yaml", "w") as f:
    yaml.dump(yaml_data, f)
