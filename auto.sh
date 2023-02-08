

while :
do
    echo "----------------------";
    echo "SELECT OPRATION"
    echo "----------------------";
    echo "1. Init new git repository"
    echo "2. Creat ignor files"
    echo "3. Add And Commit Files"
    echo "4. Remote Add"
    echo "5. Generate SSH key"
    echo "6. Assign key to SSH agent"
    echo "7. Show Git User And Email"
    echo "8. Set Git User And Email"
    echo "9. Check Status"
    echo "10. Push All Files"
    echo "11. Pull All Files"
    echo "12. Exit From Menu"
    echo "----------------------";
    echo -n "Enter your menu choice [1-9]:"


    read choice 

    case $choice in
        1) rm -rf .git;
            echo " ✅ git remo is removed.";
        
            git init;
            echo " ✅ new repo is initialized.";;

        2)  touch readme.md;
            echo "✅ readme.md file is created.";

            touch .gitignore;
            echo "✅ gitignore file is Created."


            echo "*.sh"> .gitignore;
            echo "*.exe">> .gitignore;
            echo "*.log">>.gitignore;
            echo "*.tmp">>.gitignore;
            echo "*.temp">>.gitignore;
            echo "*.temp/">>.gitignore;

            echo "✅ .gitignore file is initialized.";

            # to stop warning massage
            git config core.autocrlf false;;


        3) git add .;
           git commit -m "Commit All Files"
           echo "✅ All Files Are Commited."

           git status;;


        4) git remote remove origin;
           echo "✅ old remote are removed";

           git remote add origin git@github.com:rohitder/public.git;
           echo "✅ New remote repo path is set to default test...";;   


        5) ssh-keygen -t public -C "rohitder5024@gmail.com";
           echo "✅ ssh-key is generated for [rohitder5024@gmail.com]";;       


        6) eval "$(ssh-agent -s)";
        
           ssh-add ~/.ssh/public;
           echo "✅ ssh-agent key is assigned";;     

        7) git config --global user.name;
           git config --global user.email;;

        8) git config --global user.name "Rohit";
           git config --global user.email "rohitder5024@gmail.com";;

        9) git status;;

        10) git push -u origin main;;

        11) git pull origin main;;

        12) echo "Quitting ..."
            exit;;
    esac
done

