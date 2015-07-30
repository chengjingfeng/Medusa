<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="utf-8">
        <title>SickRage - API Builder</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width">
        <meta name="robots" content="noindex">

        <script type="text/javascript" charset="utf-8">
        <!--
            sbRoot = '${sbRoot}';
        //-->
        </script>
        <script type="text/javascript" src="${sbRoot}/js/lib/jquery-1.11.2.min.js?${sbPID}"></script>
        <script type="text/javascript" src="${sbRoot}/js/apibuilder.js?${sbPID}"></script>

        <style type="text/css">
        <!--
            #apibuilder select { padding: 2px 2px 2px 6px; display: block; float: left; margin: auto 8px 4px auto; }
            #apibuilder select option { padding: 1px 6px; line-height: 1.2em; }
            #apibuilder .disabled { color: #ccc; }
            #apibuilder .action { background-color: #efefef; }
        -->
        </style>

<script type="text/javascript">
var hide_empty_list=true;
var disable_empty_list=true;

addListGroup("api", "Command");

addOption("Command", "SickRage", "?cmd=sb", 1); //make default
addList("Command", "SickRage.AddRootDir", "?cmd=sb.addrootdir", "sb.addrootdir", "", "", "action");
addOption("Command", "SickRage.CheckScheduler", "?cmd=sb.checkscheduler", "", "", "action");
addOption("Command", "SickRage.CheckVersion", "?cmd=sb.checkversion", "", "", "action");
addList("Command", "SickRage.DeleteRootDir", "?cmd=sb.deleterootdir", "sb.deleterootdir", "", "", "action");
addOption("Command", "SickRage.GetDefaults", "?cmd=sb.getdefaults", "", "", "action");
addOption("Command", "SickRage.GetMessages", "?cmd=sb.getmessages", "", "", "action");
addOption("Command", "SickRage.GetRootDirs", "?cmd=sb.getrootdirs", "", "", "action");
addList("Command", "SickRage.PauseBacklog", "?cmd=sb.pausebacklog", "sb.pausebacklog", "", "", "action");
addOption("Command", "SickRage.Ping", "?cmd=sb.ping", "", "", "action");
addOption("Command", "SickRage.Restart", "?cmd=sb.restart", "", "", "action");
addList("Command", "SickRage.SearchIndexers", "?cmd=sb.searchindexers", "sb.searchindexers", "", "", "action");
addList("Command", "SickRage.SearchTVDb", "?cmd=sb.searchtvdb", "sb.searchindexers", "", "", "action");
addList("Command", "SickRage.SearchTVRage", "?cmd=sb.searchtvrage", "sb.searchindexers", "", "", "action");
addList("Command", "SickRage.SetDefaults", "?cmd=sb.setdefaults", "sb.setdefaults", "", "", "action");
addOption("Command", "SickRage.Shutdown", "?cmd=sb.shutdown", "", "", "action");
addOption("Command", "SickRage.Update", "?cmd=sb.update", "", "", "action");
addOption("Command", "Backlog", "?cmd=backlog", "", "", "action");
addList("Command", "Coming Episodes", "?cmd=future", "future");
addList("Command", "Episode", "?cmd=episode", "episode");
addList("Command", "Episode.Search", "?cmd=episode.search", "episode.search", "", "", "action");
addList("Command", "Episode.SetStatus", "?cmd=episode.setstatus", "episode.setstatus", "", "", "action");
addList("Command", "Episode.SubtitleSearch", "?cmd=episode.subtitlesearch", "episode.search", "", "", "action");
addList("Command", "Scene Exceptions", "?cmd=exceptions", "exceptions");
addOption("Command", "Failed", "?cmd=failed", "", "", "action");
addList("Command", "History", "?cmd=history", "history");
addOption("Command", "History.Clear", "?cmd=history.clear", "", "", "action");
addOption("Command", "History.Trim", "?cmd=history.trim", "", "", "action");
addList("Command", "Logs", "?cmd=logs", "logs");
addList("Command", "Show", "?cmd=show", "indexerid");
addList("Command", "Show.AddExisting", "?cmd=show.addexisting", "show.addexisting", "", "", "action");
addList("Command", "Show.AddNew", "?cmd=show.addnew", "show.addnew", "", "", "action");
addList("Command", "Show.Cache", "?cmd=show.cache", "indexerid", "", "", "action");
addList("Command", "Show.Delete", "?cmd=show.delete", "show.delete", "", "", "action");
addList("Command", "Show.GetBanner", "?cmd=show.getbanner", "indexerid", "", "", "action");
addList("Command", "Show.GetFanArt", "?cmd=show.getfanart", "indexerid", "", "", "action");
addList("Command", "Show.GetNetworkLogo", "?cmd=show.getnetworklogo", "indexerid", "", "", "action");
addList("Command", "Show.GetPoster", "?cmd=show.getposter", "indexerid", "", "", "action");
addList("Command", "Show.GetQuality", "?cmd=show.getquality", "indexerid", "", "", "action");
addList("Command", "Show.Pause", "?cmd=show.pause", "show.pause", "", "", "action");
addList("Command", "Show.Refresh", "?cmd=show.refresh", "indexerid", "", "", "action");
addList("Command", "Show.SeasonList", "?cmd=show.seasonlist", "show.seasonlist", "", "", "action");
addList("Command", "Show.Seasons", "?cmd=show.seasons", "seasons", "", "", "action");
addList("Command", "Show.SetQuality", "?cmd=show.setquality", "show.setquality", "", "", "action");
addList("Command", "Show.Stats", "?cmd=show.stats", "indexerid", "", "", "action");
addList("Command", "Show.Update", "?cmd=show.update", "indexerid", "", "", "action");
addList("Command", "Shows", "?cmd=shows", "shows");
addOption("Command", "Shows.Stats", "?cmd=shows.stats", "", "", "action");

// addOption("indexerid", "Optional Param", "", 1);
% for curShow in sortedShowList:
addOption("indexerid", "${curShow.name}", "&indexerid=${curShow.indexerid}");
% endfor

addOption("logs", "Optional Param", "", 1);
addOption("logs", "Debug", "&min_level=debug");
addOption("logs", "Info", "&min_level=info");
addOption("logs", "Warning", "&min_level=warning");
addOption("logs", "Error", "&min_level=error");

addOption("sb.setdefaults", "Optional Param", "", 1);
addList("sb.setdefaults", "Exclude Paused Shows on ComingEps", "&future_show_paused=0", "sb.setdefaults-status");
addList("sb.setdefaults", "Include Paused Shows on ComingEps", "&future_show_paused=1", "sb.setdefaults-status");

addOption("sb.setdefaults-status", "Optional Param", "", 1);
addList("sb.setdefaults-status", "Wanted", "&status=wanted", "sb.setdefaults-opt");
addList("sb.setdefaults-status", "Skipped", "&status=skipped", "sb.setdefaults-opt");
addList("sb.setdefaults-status", "Archived", "&status=archived", "sb.setdefaults-opt");
addList("sb.setdefaults-status", "Ignored", "&status=ignored", "sb.setdefaults-opt");

addOption("sb.setdefaults-opt", "Optional Param", "", 1);
addList("sb.setdefaults-opt", "Flatten (No Season Folder)", "&flatten_folders=1", "quality");
addList("sb.setdefaults-opt", "Use Season Folder", "&flatten_folders=0", "quality");

addOption("shows", "Optional Param", "", 1);
addOption("shows", "Show Only Paused", "&paused=1");
addOption("shows", "Show Only Not Paused", "&paused=0");
addOption("shows", "Sort by Show Name", "&sort=name");
addOption("shows", "Sort by INDEXER ID", "&sort=id");

addList("show.addexisting", "C:\\temp\\show1", "&location=C:\\temp\\show1", "show.addexisting-indexerid");
addList("show.addexisting", "D:\\Temp\\show2", "&location=D:\\Temp\\show2", "show.addexisting-indexerid");
addList("show.addexisting", "S:\\TV\\Ancient Aliens", "&location=S:\\TV\\Ancient Aliens", "show.addexisting-indexerid");
addList("show.addexisting", "S:\\TV\\Chuck", "&location=S:\\TV\\Chuck", "show.addexisting-indexerid");

addList("show.addexisting-indexerid", "101501 (Ancient Aliens)", "&indexerid=101501", "show.addexisting-opt");
addList("show.addexisting-indexerid", "80348 (Chuck)", "&indexerid=80348", "show.addexisting-opt");

addOption("show.addexisting-opt", "Optional Param", "", 1);
addList("show.addexisting-opt", "Flatten (No Season Folder)", "&flatten_folders=1", "quality");
addList("show.addexisting-opt", "Use Season Folder", "&flatten_folders=0", "quality");

addList("show.addnew", "101501 (Ancient Aliens)", "&indexerid=101501", "show.addnew-loc");
addList("show.addnew", "80348 (Chuck)", "&indexerid=80348", "show.addnew-loc");

addOption("show.addnew-loc", "Optional Param", "", 1);
addList("show.addnew-loc", "C:\\Temp", "&location=C:\\temp", "show.addnew-status");
addList("show.addnew-loc", "D:\\Temp", "&location=D:\\Temp", "show.addnew-status");
addList("show.addnew-loc", "S:\\TV", "&location=S:\\TV", "show.addnew-status");
addList("show.addnew-loc", "/usr/bin", "&location=/usr/bin", "show.addnew-status");

addOption("show.addnew-status", "Optional Param", "", 1);
addList("show.addnew-status", "Wanted", "&status=wanted", "show.addnew-opt");
addList("show.addnew-status", "Skipped", "&status=skipped", "show.addnew-opt");
addList("show.addnew-status", "Archived", "&status=archived", "show.addnew-opt");
addList("show.addnew-status", "Ignored", "&status=ignored", "show.addnew-opt");

addOption("show.addnew-opt", "Optional Param", "", 1);
addList("show.addnew-opt", "Flatten (No Season Folder)", "&flatten_folders=1", "quality");
addList("show.addnew-opt", "Use Season Folder", "&flatten_folders=0", "quality");

addOptGroup("sb.searchindexers", "Search by Name");
addList("sb.searchindexers", "Lost", "&name=Lost", "sb.searchindexers-lang");
addList("sb.searchindexers", "office", "&name=office", "sb.searchindexers-lang");
addList("sb.searchindexers", "OffiCE", "&name=OffiCE", "sb.searchindexers-lang");
addList("sb.searchindexers", "Leno", "&name=leno", "sb.searchindexers-lang");
addList("sb.searchindexers", "Top Gear", "&name=Top Gear", "sb.searchindexers-lang");
endOptGroup("sb.searchindexers");
addOptGroup("sb.searchindexers", "Search by indexerid");
addList("sb.searchindexers", "73739", "&indexerid=73739", "sb.searchindexers-lang");
addList("sb.searchindexers", "74608", "&indexerid=74608", "sb.searchindexers-lang");
addList("sb.searchindexers", "199051", "&indexerid=199051", "sb.searchindexers-lang");
addList("sb.searchindexers", "123456 (invalid show)", "&indexerid=123456", "sb.searchindexers-lang");
endOptGroup("sb.searchindexers");

addOption("sb.searchindexers-lang", "Optional Param", "", 1);
addOption("sb.searchindexers-lang", "Chinese", "&lang=zh");   // 27
addOption("sb.searchindexers-lang", "Croatian", "&lang=hr");  // 31
addOption("sb.searchindexers-lang", "Czech", "&lang=cs");     // 28
addOption("sb.searchindexers-lang", "Danish", "&lang=da");    // 10
addOption("sb.searchindexers-lang", "Dutch", "&lang=nl");     // 13
addOption("sb.searchindexers-lang", "English", "&lang=en");   // 7
addOption("sb.searchindexers-lang", "Finnish", "&lang=fi");   // 11 -- Suomeksi
addOption("sb.searchindexers-lang", "French", "&lang=fr");    // 17
addOption("sb.searchindexers-lang", "German", "&lang=de");    // 14
addOption("sb.searchindexers-lang", "Greek", "&lang=el");     // 20
addOption("sb.searchindexers-lang", "Hebrew", "&lang=he");    // 24
addOption("sb.searchindexers-lang", "Hungarian", "&lang=hu"); // 19 -- Magyar
addOption("sb.searchindexers-lang", "Italian", "&lang=it");   // 15
addOption("sb.searchindexers-lang", "Japanese", "&lang=ja");  // 25
addOption("sb.searchindexers-lang", "Korean", "&lang=ko");    // 32
addOption("sb.searchindexers-lang", "Norwegian", "&lang=no"); // 9
addOption("sb.searchindexers-lang", "Polish", "&lang=pl");    // 18
addOption("sb.searchindexers-lang", "Portuguese", "&lang=pt");// 26
addOption("sb.searchindexers-lang", "Russian", "&lang=ru");   // 22
addOption("sb.searchindexers-lang", "Slovenian", "&lang=sl"); // 30
addOption("sb.searchindexers-lang", "Spanish", "&lang=es");   // 16
addOption("sb.searchindexers-lang", "Swedish", "&lang=sv");   // 8
addOption("sb.searchindexers-lang", "Turkish", "&lang=tr");   // 21

% for curShow in sortedShowList:
addList("seasons", "${curShow.name}", "&indexerid=${curShow.indexerid}", "seasons-${curShow.indexerid}");
% endfor

% for curShow in sortedShowList:
addList("show.seasonlist", "${curShow.name}", "&indexerid=${curShow.indexerid}", "show.seasonlist-sort");
% endfor

addOption("show.seasonlist-sort", "Optional Param", "", 1);
addOption("show.seasonlist-sort", "Sort by Ascending", "&sort=asc");

% for curShow in sortedShowList:
addList("show.setquality", "${curShow.name}", "&indexerid=${curShow.indexerid}", "quality");
% endfor

//build out generic quality options
addOptGroup("quality", "Quality Templates");
addOption("quality", "SD", "&initial=sdtv|sddvd");
addOption("quality", "HD", "&initial=hdtv|fullhdtv|hdwebdl|fullhdwebdl|hdbluray|fullhdbluray");
addOption("quality", "HD720p", "&initial=hdtv|hdwebdl|hdbluray");
addOption("quality", "HD1080p", "&initial=fullhdtv|fullhdwebdl|fullhdbluray");
addOption("quality", "ANY", "&initial=sdtv|sddvd|hdtv|fullhdtv|hdwebdl|fullhdwebdl|hdbluray|fullhdbluray|unknown");
endOptGroup("quality");
addOptGroup("quality", "Inital (Custom)");
addList("quality", "SD TV", "&initial=sdtv", "quality-archive");
addList("quality", "SD DVD", "&initial=sddvd", "quality-archive");
addList("quality", "HD TV", "&initial=hdtv", "quality-archive");
addList("quality", "RawHD TV", "&initial=rawhdtv", "quality-archive");
addList("quality", "1080p HD TV", "&initial=fullhdtv", "quality-archive");
addList("quality", "720p Web-DL", "&initial=hdwebdl", "quality-archive");
addList("quality", "1080p Web-DL", "&initial=fullhdwebdl", "quality-archive");
addList("quality", "720p BluRay", "&initial=hdbluray", "quality-archive");
addList("quality", "1080p BluRay", "&initial=fullhdbluray", "quality-archive");
addList("quality", "Unknown", "&initial=unknown", "quality-archive");
endOptGroup("quality");
addOptGroup("quality", "Random (Custom)");
addList("quality", "SD DVD/720p Web-DL", "&initial=sddvd|hdwebdl", "quality-archive");
addList("quality", "SD TV/HD TV", "&initial=sdtv|hdtv", "quality-archive");
endOptGroup("quality");

addOption("quality-archive", "Optional Param", "", 1);
addOptGroup("quality-archive", "Archive (Custom)");
addList("quality-archive", "SD DVD", "&archive=sddvd");
addList("quality-archive", "HD TV", "&archive=hdtv");
addList("quality-archive", "RawHD TV", "&archive=rawhdtv");
addList("quality-archive", "1080p HD TV", "&archive=fullhdtv");
addList("quality-archive", "720p Web-DL", "&archive=hdwebdl");
addList("quality-archive", "1080p Web-DL", "&archive=fullhdwebdl");
addList("quality-archive", "720p BluRay", "&archive=hdbluray");
addList("quality-archive", "1080p BluRay", "&archive=fullhdbluray");
endOptGroup("quality-archive");
addOptGroup("quality-archive", "Random (Custom)");
addList("quality-archive", "HD TV/1080p BluRay", "&archive=hdtv|fullhdbluray");
addList("quality-archive", "720p Web-DL/720p BluRay", "&archive=hdwebdl|hdbluray");
endOptGroup("quality-archive");

// build out each show's season list for season cmd
% for curShow in seasonSQLResults:
addOption("seasons-$curShow", "Optional Param", "", 1);
    % for curShowSeason in seasonSQLResults[curShow]:
addOption("seasons-${curShow}", "${curShowSeason.season}", "&season=${curShowSeason.season}");
    % endfor
% endfor

% for curShow in sortedShowList:
addList("episode", "${curShow.name}", "&indexerid=${curShow.indexerid}", "episode-${curShow.indexerid}");
% endfor

// build out each show's season+episode list for episode cmd
% for curShow in episodeSQLResults:
    % for curShowSeason in episodeSQLResults[curShow]:
addList("episode-${curShow}", "${curShowSeason.season} x ${curShowSeason.episode}", "&season=${curShowSeason.season}&episode=${curShowSeason.episode}", "episode-${curShow}-full");
    % endfor
addOption("episode-${curShow}-full", "Optional Param", "", 1);
addOption("episode-${curShow}-full", "Show Full Path", "&full_path=1");
% endfor

// build out tvshow list for episode.search
% for curShow in sortedShowList:
addList("episode.search", "${curShow.name}", "&indexerid=${curShow.indexerid}", "episode.search-${curShow.indexerid}");
% endfor

// build out each show's season+episode list for episode.search cmd
% for curShow in episodeSQLResults:
    % for curShowSeason in episodeSQLResults[curShow]:
addOption("episode.search-${curShow}", "${curShowSeason.season} x ${curShowSeason.episode}", "&season=${curShowSeason.season}&episode=${curShowSeason.episode}");
    % endfor
% endfor

// build out tvshow list for episode.setstatus
% for curShow in sortedShowList:
addList("episode.setstatus", "${curShow.name}", "&indexerid=${curShow.indexerid}", "episode.setstatus-${curShow.indexerid}");
% endfor

// build out each show's season+episode list for episode.setstatus cmd
% for curShow in episodeSQLResults:
    % curSeason = -1
    % for curShowSeason in episodeSQLResults[curShow]:
        % if curShowSeason.season != curSeason and curShowSeason.season != 0:
            // insert just the season as the ep number is now optional
            addList("episode.setstatus-${curShow}", "Season ${curShowSeason.season}", "&season=${curShowSeason.season}", "episode-status-${curShow}");
        % endif
        % curSeason = int(curShowSeason.season)
addList("episode.setstatus-${curShow}", "${curShowSeason.season} x ${curShowSeason.episode}", "&season=${curShowSeason.season}&episode=${curShowSeason.episode}", "episode-status-${curShow}");
    % endfor
addList("episode-status-${curShow}", "Wanted", "&status=wanted", "force");
addList("episode-status-${curShow}", "Skipped", "&status=skipped", "force");
addList("episode-status-${curShow}", "Archived", "&status=archived", "force");
addList("episode-status-${curShow}", "Ignored", "&status=ignored", "force");
% endfor

addOption("force", "Optional Param", "", 1);
addOption("force", "Replace Downloaded EP", "&force=1");
addOption("force", "Skip Downloaded EP", "&force=0");

addOption("future", "Optional Param", "", 1);
addList("future", "Sort by Date", "&sort=date", "future-type");
addList("future", "Sort by Network", "&sort=network", "future-type");
addList("future", "Sort by Show Name", "&sort=show", "future-type");

addOption("future-type", "Optional Param", "", 1);
addList("future-type", "Show All Types", "&type=today|missed|soon|later", "future-paused");
addList("future-type", "Show Today", "&type=today", "future-paused");
addList("future-type", "Show Missed", "&type=missed", "future-paused");
addList("future-type", "Show Soon", "&type=soon", "future-paused");
addList("future-type", "Show Later", "&type=later", "future-paused");
addList("future-type", "Show Today & Missed", "&type=today|missed", "future-paused");

addOption("future-paused", "Optional Param", "", 1);
addOption("future-paused", "Include Paused Shows", "&paused=1");
addOption("future-paused", "Exclude Paused Shows", "&paused=0");

addOption("history", "Optional Param", "", 1);
addList("history", "Show Only Downloaded", "&type=downloaded", "history-type");
addList("history", "Show Only Snatched", "&type=snatched", "history-type");
//addOptGroup("history", "Limit Results");
addList("history", "Limit Results (2)", "&limit=2", "history-limit");
addList("history", "Limit Results (25)", "&limit=25", "history-limit");
addList("history", "Limit Results (50)", "&limit=50", "history-limit");
//endOptGroup("history");

addOption("history-type", "Optional Param", "", 1);
addOption("history-type", "Limit Results (2)", "&limit=2");
addOption("history-type", "Limit Results (25)", "&limit=25");
addOption("history-type", "Limit Results (50)", "&limit=50");

addOption("history-limit", "Optional Param", "", 1);
addOption("history-limit", "Show Only Downloaded", "&type=downloaded");
addOption("history-limit", "Show Only Snatched", "&type=snatched");

addOption("exceptions", "Optional Param", "", 1);
% for curShow in sortedShowList:
addOption("exceptions", "${curShow.name}", "&indexerid=8$curShow.indexerid}");
% endfor

addOption("sb.pausebacklog", "Optional Param", "", 1);
addOption("sb.pausebacklog", "Pause", "&pause=1");
addOption("sb.pausebacklog", "Unpause", "&pause=0");

addList("sb.addrootdir", "C:\\Temp", "&location=C:\\Temp", "sb.addrootdir-opt");
addList("sb.addrootdir", "/usr/bin", "&location=/usr/bin/", "sb.addrootdir-opt");
addList("sb.addrootdir", "S:\\Invalid_Location", "&location=S:\\Invalid_Location", "sb.addrootdir-opt");

addOption("sb.addrootdir-opt", "Optional Param", "", 1);
addOption("sb.addrootdir-opt", "Default", "&default=1");
addOption("sb.addrootdir-opt", "Not Default", "&default=0");

addOption("sb.deleterootdir", "C:\\Temp", "&location=C:\\Temp", "", 1);
addOption("sb.deleterootdir", "/usr/bin", "&location=/usr/bin/");
addOption("sb.deleterootdir", "S:\\Invalid_Location", "&location=S:\\Invalid_Location");

% for curShow in sortedShowList:
addList("show.pause", "${curShow.name}", "&indexerid=${curShow.indexerid}", "show.pause-opt");
% endfor
addOption("show.pause-opt", "Optional Param", "", 1);
addOption("show.pause-opt", "Unpause", "&pause=0");
addOption("show.pause-opt", "Pause", "&pause=1");

% for curShow in sortedShowList:
addList("show.delete", "${curShow.name}", "&indexerid=${curShow.indexerid}", "show.delete-opt");
% endfor
addOption("show.delete-opt", "Remove Files", "&removefiles=1");
addOption("show.delete-opt", "Don't Remove Files", "&removefiles=0");

</script>
</head>

<body onload="initListGroup('api', document.apibuilder.firstlevel, document.apibuilder.secondlevel, document.apibuilder.thirdlevel, document.apibuilder.forthlevel, document.apibuilder.fifthlevel, document.apibuilder.sixthlevel, document.apibuilder.seventhlevel)">

<form name="apibuilder" id="apibuilder" action="">
<table align="center">
    <tr>
        <td>
            <input type="text" size="40" id="apikey" name="apikey" value="${apikey}">
            <input type="checkbox" id="debug" class="global"><label for="debug"> Debug?</label>
            <input type="checkbox" id="profile" class="global"><label for="profile"> Profile?</label>
            <input type="checkbox" id="jsonp" class="global"><label for="jsonp"> JSONP?</label>
            <input type="checkbox" id="help" class="global"><label for="help"> Help?</label>
        </td>
    </tr>
    <tr>
        <td>
            <select name="firstlevel"><option></option></select>
            <select name="secondlevel"><option></option></select>
            <select name="thirdlevel"><option></option></select>
            <select name="forthlevel"><option></option></select>
            <select name="fifthlevel"><option></option></select>
            <select name="sixthlevel"><option></option></select>
            <select name="seventhlevel"><option></option></select>
            <div style="float: left; ">
                <input type="button" value="Reset" onclick="resetListGroup('api',1)" />
                <input type="button" value="Go" onclick="goListGroup(this.form['apikey'].value, this.form['seventhlevel'].value, this.form['sixthlevel'].value, this.form['fifthlevel'].value, this.form['forthlevel'].value, this.form['thirdlevel'].value, this.form['secondlevel'].value, this.form['firstlevel'].value)" />
            </div>
        </td>
    </tr>
</table>
</form>

<div id="apiResponse"></div>

</body>

</html>
