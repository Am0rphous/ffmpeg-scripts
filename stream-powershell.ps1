# - Streamer bilde "logo.png"
# - streamer lyden fra innspillingsenheten med navn "Digital in 1-2 (2- Mia MIDI)"
# - sender alt som MPEG-TS trafikk til en spesifikk IP-adresse og port.

List ut devices:
#.\ffmpeg.exe -list_devices true -f dshow -i dummy

.\ffmpeg.exe                                  `
  -hide_banner                                `
  -loglevel "debug"                           `
  -re                                         `
  -i http://nettradio.radiobo.no/radiobo-high `
  -ar "44100"                                 `
  -b:a "192k"                                 `
  -ac "2"                                     `
  -acodec "aac"                               `
  -strict "experimental"                      `
  -f "mpegts"                                 `
  udp://localhost:8090?pkt_size=1316 

#Packet size of 1316 is important to complete the Mpeg-ts protocol.

<# Other
  -tune "zerolatency"                     `
  -rtbufsize "3M"                         `
  -maxrate "3000k"                        `
  -bufsize "3968k"                        `
  -f "mpegts"                             `
#>
