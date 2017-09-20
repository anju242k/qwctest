class QbwcController < ApplicationController
  skip_before_action :verify_authenticity_token
  include QBWC::Controller

#   def qwc
#       # Optional tag
#       scheduler_block = ''
#       if !QBWC.minutes_to_run.nil?
#         scheduler_block = <<SB
#    <Scheduler>
#       <RunEveryNMinutes>#{QBWC.minutes_to_run}</RunEveryNMinutes>
#    </Scheduler>
# SB
#       end

#       qwc = <<QWC
# <QBWCXML>
#    <AppName>#{app_name}</AppName>
#    <AppID></AppID>
#    <AppURL>#{qbwc_action_url(:only_path => false)}</AppURL>
#    <AppDescription>Quickbooks integration</AppDescription>
#    <AppSupport>#{QBWC.support_site_url}</AppSupport>
#    <UserName>#{@username || QBWC.username}</UserName>
#    <OwnerID>#{QBWC.owner_id}</OwnerID>
#    <FileID>{#{file_id}}</FileID>
#    <QBType>QBFS</QBType>
#    <Style>Document</Style>
#    #{scheduler_block}
# </QBWCXML>
# QWC
#       send_data qwc, :filename => "#{@filename || Rails.application.class.parent_name}.qwc", :content_type => 'application/x-qwc'
#     end
end
