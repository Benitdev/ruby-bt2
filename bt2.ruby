class Human
    attr_accessor :name, :hairColor ,:gender , :phone, :email, :nation
    attr_accessor :height, :weight, :age
    def initialize(name,gender,hairColor,height,weight,age,phone,email,nation)          
            @name = name    
            @gender = gender    
            @hairColor = hairColor
            @height = height
            @weight = weight
            @phone =  phone
            @email = email 
            @age = age
            @nation = nation 
    end 
    def show
        puts "Tên : #{name}, Giới tính: #{gender},  Tuổi: #{age}, Tóc: #{hairColor}, Chiều cao: #{height}, Cân nặng: #{height}, Số điện thoại: #{phone}, Email: #{email}, Dân tộc: #{nation}\n"
    end 
end 

class Student < Human
    attr_accessor :grade1, :grade2, :grade3, :average 
    def nhap(grade1,grade2,grade3)
        @grade1 = grade1
        @grade2 = grade2
        @grade3 = grade3
        @average = (grade1 + grade2 + grade3)*0.1 /3
    end  
    def show
        puts "Tên : #{name}, Giới tính: #{gender},  Tuổi: #{age}, Tóc: #{hairColor}, Chiều cao: #{height}, Cân nặng: #{height}, Số điện thoại: #{phone}, Email: #{email}, Dân tộc: #{nation}, Điểm trung bình: #{average}\n"
    end
end
students= Array.new()
student1 = Student.new("Thiện","Nam","Vàng","1m8","65kg","21","0704042964","neihtben@gmail.com","Kinh")
student1.nhap(7,8,9)
students.push(student1)

student2 = Student.new("Thịnh","Nam","Đen","1m72","72kg","21","0955361166","neihtben@gmail.com","Kinh")
student2.nhap(8,9,10)
students.push(student2)

student3 = Student.new("Nam","Nam","Đen","1m6","45kg","21","0909192929","neihtben@gmail.com","Kinh")
student3.nhap(7,9,9)
students.push(student3)

student4 = Student.new("Tiến","Nam","Đen","1m7","55kg","21","0704042964","neihtben@gmail.com","Kinh")
student4.nhap(8,7,8)
students.push(student4)
students.each_index {
    |index|
    puts "#{students[index].show()}"
}
print "Danh sách sinh viên sau khi sắp xếp:\n"
for x in students.sort_by{|stu|[-stu.average]} do
    puts "#{x.show}"
end