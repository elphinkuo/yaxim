package de.hdmstuttgart.yaxim.service;

/*
	IPC interface for methods on XMPPService called by an activity
*/

import de.hdmstuttgart.yaxim.IXMPPRosterCallback;
import de.hdmstuttgart.yaxim.data.RosterItem;

interface IXMPPRosterService {
	boolean isAuthenticated();
	
	/* xmpp methods */
	
	void setStatus(String status, String statusMsg);
	void disconnect();
	void connect();
	void addRosterItem(String user, String alias, String group);
	void addRosterGroup(String group);
	void renameRosterGroup(String group, String newGroup);
	void removeRosterItem(String user);
	void renameRosterItem(String user, String newName);
	void moveRosterItemToGroup(String user, String group);
	
	List<RosterItem> getRosterEntriesByGroup(String group);
	List<String> getRosterGroups();
	
	/* callback methods */
	
	void registerRosterCallback(IXMPPRosterCallback callback);
	void unregisterRosterCallback(IXMPPRosterCallback callback);
}