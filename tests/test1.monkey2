' Connecting to a server

#Import "<std>"
Using std..

#Import "../m2irc"
Using m2irc

Function Main()

	Local irc:=New IRCClient
	irc.UseFiber=False 'Skip fiber usage when not using Mojo.App
	
	irc.Connect( "chat.freenode.net", 6667, "m2user" )
	
	'Manual update is only needed when UseFiber is False
	While irc.Connected
		irc.Update()
		Sleep( 0.25 )
	Wend
End