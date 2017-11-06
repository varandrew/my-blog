echo -e "\033[46;37m [Auto Deploying] deploy hexo start \033[0m"  
cd ./__hexo
echo -e "\033[46;37m [Auto Deploying] gulp build...  \033[0m"
gulp build                                                      
echo -e "\033[46;37m [Auto Deploying] hexo deploy...  \033[0m"
hexo d                                                            
echo -e "\033[46;37m [Auto Deploying] git commit...  \033[0m"
d=`date +%x-%T`                                                   
cd ..
git add .                                                         
git commit -m "auto deploy at "${d}
echo -e "\033[46;37m [Auto Deploying] git push...  \033[0m"
git push origin master
echo -e "\033[46;37m [Finish Deploy] deploy hexo finish \033[0m"