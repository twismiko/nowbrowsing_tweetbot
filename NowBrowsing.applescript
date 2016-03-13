if application "Google Chrome" is running then
	tell application "Google Chrome"
		set nowBrowsingURL to get URL of active tab of first window
		set nowBrowsingtitle to get title of active tab of first window
	end tell
	set the clipboard to "Now Browsing: " & nowBrowsingtitle & " - " & nowBrowsingURL
	tell application "Tweetbot"
		activate
	end tell
	
	tell application "System Events" to keystroke "n" using command down
	tell application "System Events" to keystroke "v" using command down
end if


-- reference
-- http://d.hatena.ne.jp/LaclefYoshi/20101024/1287887644
-- http://qiita.com/kanemu@github/items/80926e48dc214984cf93
-- http://qiita.com/littlebusters/items/9ecb39505bad1adaae73