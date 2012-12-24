$cont=0
$cont_aux=0
$p=-1
$n_r=[]
class Quiz

attr_accessor :name
attr_accessor :pregunta, :soluciones, :correctas

def initialize(name)
	@name=name
	@pregunta=[]
	@soluciones=[]
	@correctas=[]
	yield self
end


def right(option)
  $cont_aux=$cont_aux+1
  soluciones<<option
  @correctas<<option
  $n_r[$p]=$cont_aux
end

def wrong(option)
  $cont_aux=$cont_aux+1
  soluciones << option
  $n_r[$p]=$cont_aux
end


def to_s
  k=0
  print name
  print "\n"
  for j in(0..$n_r.length-1)
    print "Pregunta: "
       print pregunta[j][0]
       print "\n"
  for i in (0..$n_r[j]-1)
    print soluciones[k]
    print "\n"
   k=k+1
  end
  end
end

def question(name)
  $p=$p+1
  $cont_aux=0
  @pregunta<<[name,$cont]
  $cont=$cont+1
  pregunta
end

def run
 k=0
  print name
  print "\n"
  for j in(0..$n_r.length-1)
       print "Pregunta: "
       print pregunta[j][0]
       print "\n"
  for i in (0..$n_r[j]-1)
    print soluciones[k]
    print "\n"
   k=k+1
  end
  print "Su respuesta: "
  res=$stdin.gets.chomp
  if(res==correctas[j].to_s)
    print "			Has acertado \n"
  elsif
    print "			Has fallado \n"
  end
  end
end

end
@quiz = Quiz.new("Cuestionario de PFS 10/12/2011")do |e|
e.question("Que diade diciembre se celebra la navidad cristiana")
e.wrong(24)
e.wrong(1)
e.wrong(30)
e.wrong(14)
e.right(25)

e.question("Que en que anyo nacio una persona que actualmente ya ha cumplido 20 anyos")
e.wrong(1912)
e.wrong(1920)
e.wrong(1830)
e.right(1992)
e.wrong(2003)
end

@quiz.run
