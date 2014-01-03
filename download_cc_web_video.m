function download_cc_web_video()
server_videoPath = 'http://vireo.cs.cityu.edu.hk/webvideo/videos/';
storagePath = 'cc_web_video/videos/';

[VideoID QueryID Source VideoName URL]=textread('Video_List.txt','%s%s%s%s%s','delimiter','\t');

for i=1:length(VideoID)
    if (~exist([storagePath QueryID{i}],'dir'))
        mkdir([storagePath QueryID{i}]);
    end

    i
    VideoName{i}
    urlwrite([server_videoPath QueryID{i} '/' VideoName{i}],[storagePath QueryID{i} '/' VideoName{i}]);
end

end