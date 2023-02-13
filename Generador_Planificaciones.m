clear all
close all

%Definición de Variables%
  %Definir Temas
Temas = ["Zoom","Gmail","Google Drive", "Google Docs","Google Classroom","Google Forms","Quizizz","Genially","Educandy"];

Beneficiario ='Nombre Apellido';


for j=1:1:length(Temas)
    File = strcat('Evidencias_Deber_Tema_',Temas(j),'.tex');
    fid = fopen(File,'w');
    
    
    fprintf(fid,'\\documentclass[10pt]{article}\n');
    
    %fprintf(fid,'%\\usepackage[respuestas]{Formulario}\n');
    
    fprintf(fid,'\\usepackage{xcolor}\n');
    fprintf(fid,'\\usepackage{color}\n');
    fprintf(fid,'\\usepackage{colortbl}\n');
    fprintf(fid,'\\usepackage{multicol}\n');
    fprintf(fid,'\\usepackage{multirow}\n');
    fprintf(fid,'\\usepackage{biblatex}\n');
    fprintf(fid,'\\usepackage{float}\n');
    fprintf(fid,'\\usepackage{appendix}\n');
    fprintf(fid,'\\usepackage{pdfpages}\n');
    fprintf(fid,'\\usepackage[bookmarks,colorlinks,linkcolor=Cerulean,citecolor=Cerulean]{hyperref}\n');
    fprintf(fid,'\\usepackage{fontawesome}\n');
    %fprintf(fid,'%\\usepackage[style=ieee]{biblatex}\n');
    fprintf(fid,'\\definecolor{gray97}{gray}{.97}\n');
    fprintf(fid,'\\definecolor{gray75}{gray}{.75}\n');
    fprintf(fid,'\\definecolor{gray45}{gray}{.45}\n');
    fprintf(fid,'\\definecolor{miverde}{rgb}{0,0.6,0}\n');
    fprintf(fid,'\\definecolor{migris}{rgb}{0.5,0.5,0.5}\n');
    fprintf(fid,'\\definecolor{mimalva}{rgb}{0.58,0,0.82}\n');
    
    fprintf(fid,'\\usepackage{listingsutf8}\n');
    fprintf(fid,'\\usepackage{listings}\n');
    
    fprintf(fid,'\\title{Evidencias-Alfabetizacion}\n');
    fprintf(fid,'\\author{Carlos Estrada}\n');
    fprintf(fid,'\\date{February 2023}\n');
    
    fprintf(fid,'\\begin{document}\n');
    fprintf(fid,'\\begin{figure}[H]\n');
        fprintf(fid,'\\centering\n');
        fprintf(fid,'\\includegraphics[width=0.9\\textwidth]{MembreteAlfabetizacion.png}\n');
        
    fprintf(fid,'\\end{figure}\n');
    fprintf(fid,'\\begin{center}\n');
      fprintf(fid,'\\textbf{EVIDENCIAS TAREAS} \n');
    
    fprintf(fid,'\n \\textbf{PROYECTO: INCLUSIÓN DIGITAL- ALFABETIZACIÓN INFORMÁTICA}\n');  
    fprintf(fid,'\\end{center}\n');
    
      
    fprintf(fid,'\n \\textbf{GRUPO:} MINEDU\n');
    
    
    fprintf(fid,'\n \\textbf{TUTOR-EPN:} Carlos Alejandro Estrada Rivera\n');
    
    
    fprintf(fid,'\n \\textbf{ESTUDIANTE-PARTICIPANTE:} %s\n',Beneficiario); 
    
    
    fprintf(fid,'\n \\textbf{TEMA:} %s \n', Temas(j));

    fprintf(fid,'\n \\textbf{DEBER DESARROLLADO BAJO SUPERVISIÓN DEL TUTOR}\n');

    fprintf(fid,'\\begin{figure}[H]\n');
    fprintf(fid,'\\centering\n');
    fprintf(fid,'\\includegraphics[width=0.8\\textwidth]{%s/Graficos/%s1}\n',Beneficiario,Temas(j));
        
    fprintf(fid,'\\end{figure}\n');

    fprintf(fid,'\\end{document}\n');
    fclose(fid);

end
