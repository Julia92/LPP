require '~/LPP/Prtc_12/ull-etsii-alu4237-quiz/lib/ull-etsii-alu4237-quiz/ull-etsii-alu4237-quiz.rb'

describe Ull::Etsii::Alu4237::Quiz::Quiz do
before :all do
@quiz = Ull::Etsii::Alu4237::Quiz::Quiz.new("Cuestionario de PFS 10/12/2011")do |e|
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



end


it "Deberia de haber un metodo run" do
@quiz.respond_to?("run")
end

it "Deberia de haber una variable donde se guarde el nombre del formulario" do
@quiz.name.should=="Cuestionario de PFS 10/12/2011"
end

it "Deberia de haber una variable que almacene las preguntas" do
@quiz.respond_to?("pregunta")
end

it "Deberia de haber una variable que almacene las respuestas" do

@quiz.respond_to?("right")
@quiz.respond_to?("wrong")
end

it "Deberia de haber una variable que almacene las respuestas correctas" do
@quiz.correctas.should==[25,1992]
end
 
it "Deberia de haber un metodo que guarde la pregunta" do
@quiz.respond_to?("question")
end

end
