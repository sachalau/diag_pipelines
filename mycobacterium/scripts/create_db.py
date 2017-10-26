import mysql.connector

cnx = mysql.connector.connect(option_files=snakemake.input[0], option_groups="myco")
cnx.get_warnings = True
cursor = cnx.cursor()

cmds={}
cmds['samples']="""
CREATE TABLE samples(Specimen varchar(255) NOT NULL, Patient varchar(255) NOT NULL, Bio_Project varchar(255)  NOT NULL, Material  varchar(255) NOT NULL, Specimen_Collected_Date Date NOT NULL, Bio_Sample varchar(255) NOT NULL, Lineage varchar(255) NOT NULL, Octal_Spoligotype varchar(255) NOT NULL, PRIMARY KEY (Specimen));
"""

cmds['sras']="""
CREATE TABLE sras(Specimen varchar(255) NOT NULL, Sequence_Read_Archive varchar(255) NOT NULL, PRIMARY KEY(Specimen, Sequence_Read_Archive));
"""

cmds["dst"]="""
CREATE TABLE dst(Specimen varchar(255) NOT NULL, test varchar(255) NOT NULL, Date date, H varchar(255) NOT NULL, antibio varchar(255) NOT NULL, phenotype varchar(255) NOT NULL, PRIMARY KEY (Specimen, test, Date, antibio));
"""

cmds["corres"]="""
CREATE TABLE corres(Specimen varchar(255) NOT NULL, file varchar(255), PRIMARY KEY(Specimen));
"""

cmds["resistance"]="""
CREATE TABLE resistance(antibiotic varchar(255) NOT NULL, gene varchar(255), PRIMARY KEY(antibiotic, gene));
"""

cmds["mutations"]="""
CREATE TABLE mutations(Specimen varchar(255) NOT NULL, software varchar(255) NOT NULL, gene varchar(255) NOT NULL, position int NOT NULL, ref_aa varchar(255) NOT NULL, mut_aa varchar(255) NOT NULL, PRIMARY KEY(Specimen, software, gene, position));
"""

with open(snakemake.output[0], "w") as myfile:
    myfile.write("")

for i in cmds.keys():
    try:
        cursor.execute(cmds[i])
    except mysql.connector.errors.ProgrammingError:
        with open(snakemake.output[0], "a") as f:
            f.write(str(i)+' database already exists\n')
        
cnx.commit()
cnx.close()