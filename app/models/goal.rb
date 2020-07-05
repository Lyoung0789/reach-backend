class Goal < ApplicationRecord
    has_many :todos
    validates :title, presence: true
    validates :category, presence: true
    validates :category, inclusion: {in: ['Budget', 'Travel', 'Health', 'Mental Health', 'Spiritual', 'Cooking', 'Other'] }


    IMAGES = ["https://cdn.pixabay.com/photo/2019/11/22/17/15/drop-of-water-4645249__480.jpg",
    "https://cdn.pixabay.com/photo/2020/04/11/20/35/lighthouse-5031977__480.jpg",
    "https://cdn.pixabay.com/photo/2020/06/21/09/48/hill-5324149__480.jpg",
    "https://cdn.pixabay.com/photo/2020/06/24/20/42/mountains-5337650__480.jpg",
    "https://cdn.pixabay.com/photo/2020/06/24/20/42/truebsee-5337653__480.jpg",
    "https://cdn.pixabay.com/photo/2020/06/27/22/11/sunflower-5347343__480.jpg",
    "https://cdn.pixabay.com/photo/2015/03/26/10/38/blue-691718_1280.jpg",
    "https://cdn.pixabay.com/photo/2014/05/22/16/52/pyrenees-351266_1280.jpg",
    "https://cdn.pixabay.com/photo/2016/08/09/21/54/yellowstone-national-park-1581879_1280.jpg"
    ]

    def random_image
        if !self.image_url
            self.image_url = IMAGES.sample
        end 
    end 
   
end
