# Gems
require 'sinatra'

get '/classes' do
	assignments= [ 
		{:page => "3", :instructions => "Analyze this!"},
		{:page => "65", :instructions => "Write a dissertation or something"}
	]
	workInferno = {:document => "Dante's Inferno", :assignments => assignments}
	
	works = [ workInferno ]

	lit = {:id => 1, :name => "Mrs. Smith's 9am European Literature", :works => works}
	@classes = [lit]

	erb :classes, :layout => :teacher_layout
end

get '/class/:id' do
	@id = params[:id]

	@students = [{:name => "Tommy", :grade => 32} ,{:name => "Bob", :grade => 70} ,{:name => "Thor", :grade => "FUCK YOU I'M THOR"}, {:name => "Jennifer", :grade => 105}]

	assignments= [ 
		{:page => "3", :instructions => "Analyze this!"},
		{:page => "65", :instructions => "Write a dissertation or something"}
	]
	workInferno = {:document => "Dante's Inferno", :assignments => assignments}

	@works = [ workInferno, workInferno, workInferno]

	@class = {:id => 1, :name => "Mrs. Smith's 9am European Literature", :works => @works}
	erb :class, :layout => :teacher_layout
end

get '/assignment/:id' do
	@title = "Analysis of 34th Canto"
	@description = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus, laudantium ad sequi officiis temporibus itaque!"
	
	@text = 'Canto XXXIV<br>

<br>
<br>Argument<br>

<br>
<br>     In the fourth and last round of the ninth circle, those who have betrayed<br>
their benefactors are wholly covered with ice. And in the midst is Lucifer, at<br>
whose back Dante and Virgil ascend, till by a secret path they reach the<br>
surface of the other hemisphere of the earth, and once more obtain sight of<br>
the stars.<br>

<br>
<br>"The banners of Hell\'s Monarch do come forth<br>
Toward us; therefore look," so spake my guide,<br>
"If thou discern him." As, when breathes a cloud<br>
Heavy and dense, or when the shades of night<br>
Fall on our hemisphere, seems view\'d from far<br>
A windmill, which the blast stirs briskly round;<br>
Such was the fabric then methought I saw.<br>

<br>
<br>To shield me from the wind, forthwith I drew<br>
Behind my guide: no covert else was there.<br>

<br>
<br>Now came I (and with fear I bid my strain<br>
Record the marvel) where the souls were all<br>
Whelm\'d underneath, transparent, as through glass<br>
Pellucid the frail stem. Some prone were laid;<br>
Others stood upright, this upon the soles,<br>
That on his head, a third with face to feet<br>
Arch\'d like a bow. When to the point we came,<br>
Whereat my guide was pleased that I should see<br>

<br>
<br>The creature eminent in beauty once,<br>
He from before me stepp\'d and made me pause.<br>'


	erb :assignment, :layout => :teacher_layout
end