function download_cc_web_video_keyframes()
server_videoPath = 'http://vireo.cs.cityu.edu.hk/webvideo/Keyframes/';
storagePath = 'cc_web_video/Keyframes/';

[SerialID KeyframeName VideoID VideoName]=textread('Shot_Info.txt','%s%s%s%s','delimiter','\t');

for i=1:length(VideoID)
    KID=VideoID{i}/100;
    if (~exist([storagePath KID],'dir'))
        mkdir([storagePath KID]);
    end

    urlwrite([server_videoPath KID '/' KeyframeName{i}],[storagePath KID '/' KeyframeName{i},'.jpg']);
end

end