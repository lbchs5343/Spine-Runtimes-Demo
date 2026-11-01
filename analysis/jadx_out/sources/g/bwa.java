package g;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.XmlResourceParser;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public abstract class bwa {

    /* renamed from: a, reason: collision with root package name */
    public static final HashMap f12302a;

    static {
        new HashMap().put("android", new ddf("xmlns", "android", 0, new Pair[0]));
        HashMap hashMap = new HashMap();
        f12302a = hashMap;
        hashMap.put("sharedUserId", new ddf("android", "sharedUserId", 0, new Pair[0]));
        hashMap.put("sharedUserLabel", new ddf("android", "sharedUserLabel", 3, new Pair[0]));
        hashMap.put(TTDownloadField.TT_VERSION_CODE, new ddf("android", TTDownloadField.TT_VERSION_CODE, 1, new Pair[0]));
        hashMap.put(TTDownloadField.TT_VERSION_NAME, new ddf("android", TTDownloadField.TT_VERSION_NAME, 0, new Pair[0]));
        hashMap.put("installLocation", new ddf("android", "installLocation", 0, new Pair(0, LiveConfigKey.AUTO), new Pair(1, "internalOnly"), new Pair(2, "preferExternal")));
        hashMap.put(abn.EXTRA_UA_APP_NAME, new ddf("android", abn.EXTRA_UA_APP_NAME, 0, new Pair[0]));
        hashMap.put("allowEmbedded", new ddf("android", "allowEmbedded", 2, new Pair[0]));
        hashMap.put("allowTaskReparenting", new ddf("android", "allowTaskReparenting", 2, new Pair[0]));
        hashMap.put("alwaysRetainTaskState", new ddf("android", "alwaysRetainTaskState", 2, new Pair[0]));
        hashMap.put("autoRemoveFromRecents", new ddf("android", "autoRemoveFromRecents", 2, new Pair[0]));
        hashMap.put(MediationConstant.RIT_TYPE_BANNER, new ddf("android", MediationConstant.RIT_TYPE_BANNER, 3, new Pair[0]));
        i(hashMap, new ddf("android", "clearTaskOnLaunch", 2, new Pair[0]));
        i(hashMap, new ddf("android", "configChanges", 3, new Pair(1, "mcc"), new Pair(2, "mnc"), new Pair(4, "locale"), new Pair(8, "touchscreen"), new Pair(16, "keyboard"), new Pair(32, "keyboardHidden"), new Pair(64, "navigation"), new Pair(256, "screenLayout"), new Pair(Integer.valueOf(C.ENCODING_PCM_32BIT), "fontScale"), new Pair(512, "uiMode"), new Pair(Integer.valueOf(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME), "orientation"), new Pair(1024, "screenSize"), new Pair(2048, "smallestScreenSize"), new Pair(4096, "density"), new Pair(8192, "layout_direction")));
        i(hashMap, new ddf("android", "documentLaunchMode", 0, new Pair(0, LiveConfigKey.NONE), new Pair(1, "intoExisting"), new Pair(2, "always"), new Pair(3, "never")));
        i(hashMap, new ddf("android", "enabled", 2, new Pair[0]));
        i(hashMap, new ddf("android", "excludeFromRecents", 2, new Pair[0]));
        i(hashMap, new ddf("android", "exported", 2, new Pair[0]));
        i(hashMap, new ddf("android", "finishOnTaskLaunch", 2, new Pair[0]));
        i(hashMap, new ddf("android", "hardwareAccelerated", 2, new Pair[0]));
        i(hashMap, new ddf("android", "icon", 3, new Pair[0]));
        i(hashMap, new ddf("android", TTDownloadField.TT_LABEL, 3, new Pair[0]));
        i(hashMap, new ddf("android", "launchMode", 0, new Pair(0, "standard"), new Pair(1, "singleTop"), new Pair(2, "singleTask"), new Pair(3, "singleInstance")));
        i(hashMap, new ddf("android", "maxRecents", 1, new Pair[0]));
        i(hashMap, new ddf("android", "multiprocess", 2, new Pair[0]));
        i(hashMap, new ddf("android", abn.EXTRA_UA_APP_NAME, 0, new Pair[0]));
        i(hashMap, new ddf("android", "noHistory", 2, new Pair[0]));
        i(hashMap, new ddf("android", "parentActivityName", 0, new Pair[0]));
        i(hashMap, new ddf("android", "permission", 0, new Pair[0]));
        i(hashMap, new ddf("android", "process", 0, new Pair[0]));
        i(hashMap, new ddf("android", "relinquishTaskIdentity", 2, new Pair[0]));
        i(hashMap, new ddf("android", "resizeableActivity", 2, new Pair[0]));
        i(hashMap, new ddf("android", "screenOrientation", 0, new Pair(-1, "unspecified"), new Pair(0, "landscape"), new Pair(1, "portrait"), new Pair(2, "user"), new Pair(3, "behind"), new Pair(4, "sensor"), new Pair(5, "nosensor"), new Pair(6, "sensorLandscape"), new Pair(7, "sensorPortrait"), new Pair(8, "reverseLandscape"), new Pair(9, "reversePortrait"), new Pair(10, "fullSensor"), new Pair(11, "userLandscape"), new Pair(12, "userPortrait"), new Pair(13, "fullUser"), new Pair(14, "locked")));
        i(hashMap, new ddf("android", "stateNotNeeded", 2, new Pair[0]));
        i(hashMap, new ddf("android", "supportsPictureInPicture", 2, new Pair[0]));
        i(hashMap, new ddf("android", "taskAffinity", 0, new Pair[0]));
        i(hashMap, new ddf("android", "theme", 3, new Pair[0]));
        i(hashMap, new ddf("android", "uiOptions", 0, new Pair(0, LiveConfigKey.NONE), new Pair(1, "splitActionBarWhenNarrow")));
        i(hashMap, new ddf("android", "windowSoftInputMode", 3, new Pair(0, "stateUnspecified"), new Pair(1, "stateUnchanged"), new Pair(2, "stateHidden"), new Pair(3, "stateAlwaysHidden"), new Pair(4, "stateVisible"), new Pair(5, "stateAlwaysVisible"), new Pair(0, "adjustUnspecified"), new Pair(16, "adjustResize"), new Pair(32, "adjustPan"), new Pair(48, "adjustNothing"), new Pair(256, "isForwardNavigation")));
        i(hashMap, new ddf("android", "windowAnimationStyle", 3, new Pair[0]));
        i(hashMap, new ddf("android", "enabled", 2, new Pair[0]));
        i(hashMap, new ddf("android", "exported", 2, new Pair[0]));
        i(hashMap, new ddf("android", "icon", 3, new Pair[0]));
        i(hashMap, new ddf("android", TTDownloadField.TT_LABEL, 3, new Pair[0]));
        i(hashMap, new ddf("android", abn.EXTRA_UA_APP_NAME, 0, new Pair[0]));
        i(hashMap, new ddf("android", "permission", 0, new Pair[0]));
        i(hashMap, new ddf("android", "targetActivity", 0, new Pair[0]));
        i(hashMap, new ddf("android", "allowTaskReparenting", 2, new Pair[0]));
        i(hashMap, new ddf("android", "allowBackup", 2, new Pair[0]));
        i(hashMap, new ddf("android", "backupAgent", 0, new Pair[0]));
        i(hashMap, new ddf("android", "backupInForeground", 2, new Pair[0]));
        i(hashMap, new ddf("android", MediationConstant.RIT_TYPE_BANNER, 3, new Pair[0]));
        i(hashMap, new ddf("android", "debuggable", 2, new Pair[0]));
        i(hashMap, new ddf("android", "description", 0, new Pair[0]));
        i(hashMap, new ddf("android", "directBootAware", 2, new Pair[0]));
        i(hashMap, new ddf("android", "enabled", 2, new Pair[0]));
        i(hashMap, new ddf("android", "extractNativeLibs", 2, new Pair[0]));
        i(hashMap, new ddf("android", "fullBackupContent", 0, new Pair[0]));
        i(hashMap, new ddf("android", "fullBackupOnly", 2, new Pair[0]));
        i(hashMap, new ddf("android", "hasCode", 2, new Pair[0]));
        i(hashMap, new ddf("android", "hardwareAccelerated", 2, new Pair[0]));
        i(hashMap, new ddf("android", "icon", 3, new Pair[0]));
        i(hashMap, new ddf("android", "roundIcon", 3, new Pair[0]));
        i(hashMap, new ddf("android", "isGame", 2, new Pair[0]));
        i(hashMap, new ddf("android", "killAfterRestore", 2, new Pair[0]));
        i(hashMap, new ddf("android", "largeHeap", 2, new Pair[0]));
        i(hashMap, new ddf("android", TTDownloadField.TT_LABEL, 3, new Pair[0]));
        i(hashMap, new ddf("android", "logo", 3, new Pair[0]));
        i(hashMap, new ddf("android", "manageSpaceActivity", 0, new Pair[0]));
        i(hashMap, new ddf("android", abn.EXTRA_UA_APP_NAME, 0, new Pair[0]));
        i(hashMap, new ddf("android", "networkSecurityConfig", 3, new Pair[0]));
        i(hashMap, new ddf("android", "permission", 0, new Pair[0]));
        i(hashMap, new ddf("android", "persistent", 2, new Pair[0]));
        i(hashMap, new ddf("android", "process", 0, new Pair[0]));
        i(hashMap, new ddf("android", "restoreAnyVersion", 2, new Pair[0]));
        i(hashMap, new ddf("android", "requiredAccountType", 0, new Pair[0]));
        i(hashMap, new ddf("android", "resizeableActivity", 2, new Pair[0]));
        i(hashMap, new ddf("android", "restrictedAccountType", 0, new Pair[0]));
        i(hashMap, new ddf("android", "supportsRtl", 2, new Pair[0]));
        i(hashMap, new ddf("android", "taskAffinity", 0, new Pair[0]));
        i(hashMap, new ddf("android", "testOnly", 2, new Pair[0]));
        i(hashMap, new ddf("android", "theme", 3, new Pair[0]));
        i(hashMap, new ddf("android", "uiOptions", 0, new Pair(0, LiveConfigKey.NONE), new Pair(1, "splitActionBarWhenNarrow")));
        i(hashMap, new ddf("android", "usesCleartextTraffic", 2, new Pair[0]));
        i(hashMap, new ddf("android", "vmSafeMode", 2, new Pair[0]));
        i(hashMap, new ddf("android", "multiArch", 2, new Pair[0]));
        i(hashMap, new ddf("android", "use32bitAbi", 2, new Pair[0]));
        i(hashMap, new ddf("android", "defaultToDeviceProtectedStorage", 2, new Pair[0]));
        i(hashMap, new ddf("android", "screenSize", 0, new Pair(0, "undefined"), new Pair(1, "small"), new Pair(2, "normal"), new Pair(3, "large"), new Pair(4, "xlarge")));
        i(hashMap, new ddf("android", "screenDensity", 0, new Pair(120, "ldpi"), new Pair(160, "mdpi"), new Pair(Integer.valueOf(MediaPlayer.MEDIA_PLAYER_OPTION_IS_VPP_LEVEL), "tvdpi"), new Pair(Integer.valueOf(MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA), "hdpi"), new Pair(Integer.valueOf(MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME), "xhdpi"), new Pair(480, "xxhdpi"), new Pair(Integer.valueOf(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK), "xxxhigh"), new Pair(Integer.valueOf(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_RANGE_TIME), "260"), new Pair(Integer.valueOf(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEOCODEC_PIXEL_ALIGN), "280"), new Pair(Integer.valueOf(TTAdConstant.DEFAULT_LIVE_SHOW_TIME_MAX), "300"), new Pair(Integer.valueOf(MediaPlayer.MEDIA_PLAYER_OPTION_NEED_CHECK_DROP_AUDIO), "340"), new Pair(Integer.valueOf(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL), "360"), new Pair(Integer.valueOf(MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL), "400"), new Pair(420, "420"), new Pair(Integer.valueOf(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUX_NONBLOCK_READ), "560")));
        i(hashMap, new ddf("android", "scheme", 0, new Pair[0]));
        i(hashMap, new ddf("android", "host", 0, new Pair[0]));
        i(hashMap, new ddf("android", "port", 0, new Pair[0]));
        i(hashMap, new ddf("android", "path", 0, new Pair[0]));
        i(hashMap, new ddf("android", "pathPattern", 0, new Pair[0]));
        i(hashMap, new ddf("android", "pathPrefix", 0, new Pair[0]));
        i(hashMap, new ddf("android", TTDownloadField.TT_MIME_TYPE, 0, new Pair[0]));
        i(hashMap, new ddf("android", "path", 0, new Pair[0]));
        i(hashMap, new ddf("android", "pathPattern", 0, new Pair[0]));
        i(hashMap, new ddf("android", "pathPrefix", 0, new Pair[0]));
        i(hashMap, new ddf("android", "functionalTest", 2, new Pair[0]));
        i(hashMap, new ddf("android", "handleProfiling", 2, new Pair[0]));
        i(hashMap, new ddf("android", "icon", 3, new Pair[0]));
        i(hashMap, new ddf("android", TTDownloadField.TT_LABEL, 3, new Pair[0]));
        i(hashMap, new ddf("android", abn.EXTRA_UA_APP_NAME, 0, new Pair[0]));
        i(hashMap, new ddf("android", "targetPackage", 0, new Pair[0]));
        i(hashMap, new ddf("android", abn.EXTRA_UA_APP_NAME, 0, new Pair[0]));
        i(hashMap, new ddf("android", "resource", 3, new Pair[0]));
        i(hashMap, new ddf("android", "value", 0, new Pair[0]));
        i(hashMap, new ddf("android", "icon", 3, new Pair[0]));
        i(hashMap, new ddf("android", TTDownloadField.TT_LABEL, 3, new Pair[0]));
        i(hashMap, new ddf("android", "priority", 1, new Pair[0]));
        i(hashMap, new ddf("android", "path", 0, new Pair[0]));
        i(hashMap, new ddf("android", "pathPrefix", 0, new Pair[0]));
        i(hashMap, new ddf("android", "pathPattern", 0, new Pair[0]));
        i(hashMap, new ddf("android", "permission", 0, new Pair[0]));
        i(hashMap, new ddf("android", "readPermission", 0, new Pair[0]));
        i(hashMap, new ddf("android", "writePermission", 0, new Pair[0]));
        i(hashMap, new ddf("android", "description", 3, new Pair[0]));
        i(hashMap, new ddf("android", "icon", 3, new Pair[0]));
        i(hashMap, new ddf("android", TTDownloadField.TT_LABEL, 3, new Pair[0]));
        i(hashMap, new ddf("android", abn.EXTRA_UA_APP_NAME, 0, new Pair[0]));
        i(hashMap, new ddf("android", "permissionGroup", 0, new Pair[0]));
        i(hashMap, new ddf("android", "protectionLevel", 0, new Pair(0, "normal"), new Pair(1, "dangerous"), new Pair(2, "signature"), new Pair(3, "signatureOrSystem")));
        i(hashMap, new ddf("android", "description", 3, new Pair[0]));
        i(hashMap, new ddf("android", "icon", 3, new Pair[0]));
        i(hashMap, new ddf("android", TTDownloadField.TT_LABEL, 3, new Pair[0]));
        i(hashMap, new ddf("android", abn.EXTRA_UA_APP_NAME, 0, new Pair[0]));
        i(hashMap, new ddf("android", "icon", 3, new Pair[0]));
        i(hashMap, new ddf("android", TTDownloadField.TT_LABEL, 3, new Pair[0]));
        i(hashMap, new ddf("android", abn.EXTRA_UA_APP_NAME, 0, new Pair[0]));
        i(hashMap, new ddf("android", "authorities", 0, new Pair[0]));
        i(hashMap, new ddf("android", "directBootAware", 2, new Pair[0]));
        i(hashMap, new ddf("android", "enabled", 2, new Pair[0]));
        i(hashMap, new ddf("android", "exported", 2, new Pair[0]));
        i(hashMap, new ddf("android", "grantUriPermissions", 2, new Pair[0]));
        i(hashMap, new ddf("android", "icon", 3, new Pair[0]));
        i(hashMap, new ddf("android", "initOrder", 1, new Pair[0]));
        i(hashMap, new ddf("android", TTDownloadField.TT_LABEL, 3, new Pair[0]));
        i(hashMap, new ddf("android", "multiprocess", 2, new Pair[0]));
        i(hashMap, new ddf("android", abn.EXTRA_UA_APP_NAME, 0, new Pair[0]));
        i(hashMap, new ddf("android", "permission", 0, new Pair[0]));
        i(hashMap, new ddf("android", "process", 0, new Pair[0]));
        i(hashMap, new ddf("android", "readPermission", 0, new Pair[0]));
        i(hashMap, new ddf("android", "syncable", 2, new Pair[0]));
        i(hashMap, new ddf("android", "writePermission", 0, new Pair[0]));
        i(hashMap, new ddf("android", "directBootAware", 2, new Pair[0]));
        i(hashMap, new ddf("android", "enabled", 2, new Pair[0]));
        i(hashMap, new ddf("android", "exported", 2, new Pair[0]));
        i(hashMap, new ddf("android", "icon", 3, new Pair[0]));
        i(hashMap, new ddf("android", TTDownloadField.TT_LABEL, 3, new Pair[0]));
        i(hashMap, new ddf("android", abn.EXTRA_UA_APP_NAME, 0, new Pair[0]));
        i(hashMap, new ddf("android", "permission", 0, new Pair[0]));
        i(hashMap, new ddf("android", "process", 0, new Pair[0]));
        i(hashMap, new ddf("android", "description", 3, new Pair[0]));
        i(hashMap, new ddf("android", "directBootAware", 2, new Pair[0]));
        i(hashMap, new ddf("android", "enabled", 2, new Pair[0]));
        i(hashMap, new ddf("android", "exported", 2, new Pair[0]));
        i(hashMap, new ddf("android", "icon", 3, new Pair[0]));
        i(hashMap, new ddf("android", "isolatedProcess", 2, new Pair[0]));
        i(hashMap, new ddf("android", TTDownloadField.TT_LABEL, 3, new Pair[0]));
        i(hashMap, new ddf("android", abn.EXTRA_UA_APP_NAME, 0, new Pair[0]));
        i(hashMap, new ddf("android", "permission", 0, new Pair[0]));
        i(hashMap, new ddf("android", "process", 0, new Pair[0]));
        i(hashMap, new ddf("android", abn.EXTRA_UA_APP_NAME, 0, new Pair[0]));
        i(hashMap, new ddf("android", "resizeable", 2, new Pair[0]));
        i(hashMap, new ddf("android", "smallScreens", 2, new Pair[0]));
        i(hashMap, new ddf("android", "normalScreens", 2, new Pair[0]));
        i(hashMap, new ddf("android", "largeScreens", 2, new Pair[0]));
        i(hashMap, new ddf("android", "xlargeScreens", 2, new Pair[0]));
        i(hashMap, new ddf("android", "anyDensity", 2, new Pair[0]));
        i(hashMap, new ddf("android", "requiresSmallestWidthDp", 1, new Pair[0]));
        i(hashMap, new ddf("android", "compatibleWidthLimitDp", 1, new Pair[0]));
        i(hashMap, new ddf("android", "largestWidthLimitDp", 1, new Pair[0]));
        i(hashMap, new ddf("android", "reqFiveWayNav", 2, new Pair[0]));
        i(hashMap, new ddf("android", "reqHardKeyboard", 2, new Pair[0]));
        i(hashMap, new ddf("android", "reqKeyboardType", 0, new Pair(0, "undefined"), new Pair(1, "nokeys"), new Pair(2, "qwerty"), new Pair(3, "twelvekey")));
        i(hashMap, new ddf("android", "reqNavigation", 0, new Pair(0, "undefined"), new Pair(1, "nonav"), new Pair(2, "dpad"), new Pair(3, "trackball"), new Pair(4, "wheel")));
        i(hashMap, new ddf("android", "reqTouchScreen", 0, new Pair(0, "undefined"), new Pair(1, "notouch"), new Pair(2, "stylus"), new Pair(3, "finger")));
        i(hashMap, new ddf("android", abn.EXTRA_UA_APP_NAME, 0, new Pair[0]));
        i(hashMap, new ddf("android", "required", 2, new Pair[0]));
        i(hashMap, new ddf("android", "glEsVersion", 1, new Pair[0]));
        i(hashMap, new ddf("android", abn.EXTRA_UA_APP_NAME, 0, new Pair[0]));
        i(hashMap, new ddf("android", "required", 2, new Pair[0]));
        i(hashMap, new ddf("android", abn.EXTRA_UA_APP_NAME, 0, new Pair[0]));
        i(hashMap, new ddf("android", "maxSdkVersion", 1, new Pair[0]));
        i(hashMap, new ddf("android", abn.EXTRA_UA_APP_NAME, 0, new Pair[0]));
        i(hashMap, new ddf("android", "maxSdkVersion", 1, new Pair[0]));
        i(hashMap, new ddf("android", "minSdkVersion", 1, new Pair[0]));
        i(hashMap, new ddf("android", "targetSdkVersion", 1, new Pair[0]));
        i(hashMap, new ddf("android", "maxSdkVersion", 1, new Pair[0]));
        i(hashMap, new ddf("android", "resumeWhilePausing", 0, new Pair[0]));
        i(hashMap, new ddf("android", "showForAllUsers", 2, new Pair[0]));
        i(hashMap, new ddf("android", "finishOnCloseSystemDialogs", 2, new Pair[0]));
    }

    public static void b(hbj hbjVar, hbj hbjVar2, String str) {
        Iterator it = hbjVar2.f19175e.iterator();
        while (it.hasNext()) {
            hbj hbjVar3 = (hbj) it.next();
            String str2 = hbjVar.h;
            ArrayList arrayList = hbjVar.f19175e;
            if (!"manifest".equals(str2) || (!"uses-sdk".equals(hbjVar3.h) && !"uses-split".equals(hbjVar3.h))) {
                hbj hbjVar4 = null;
                String q = "application".equals(hbjVar.h) ? q(hbjVar3, str) : null;
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    hbj hbjVar5 = (hbj) it2.next();
                    String str3 = hbjVar3.h;
                    if ((("application".equals(str3) || "queries".equals(str3) || "supports-screens".equals(str3) || "compatible-screens".equals(str3)) && str3.equals(hbjVar5.h)) || (q != null && q.equals(q(hbjVar5, str)))) {
                        hbjVar4 = hbjVar5;
                        break;
                    }
                }
                if (hbjVar4 != null) {
                    ArrayList arrayList2 = hbjVar4.f19177g;
                    Iterator it3 = hbjVar3.f19172b.iterator();
                    while (it3.hasNext()) {
                        aow aowVar = (aow) it3.next();
                        String str4 = hbjVar4.h;
                        if ("application".equals(str4)) {
                            String str5 = aowVar.f10593c;
                            String str6 = aowVar.f10591a;
                            if ("android".equals(str5)) {
                                if (!"hasCode".equals(str6) && !"extractNativeLibs".equals(str6) && !"classLoader".equals(str6) && !"splitName".equals(str6)) {
                                }
                            }
                        }
                        String str7 = aowVar.f10593c;
                        String str8 = aowVar.f10591a;
                        String n = n(hbjVar4, str7, str8);
                        if (n == null) {
                            hbjVar4.f19172b.add(aowVar);
                        } else if (!n.equals(aowVar.f10592b) && (!"android".equals(aowVar.f10593c) || (((!"application".equals(str4) || (!abn.EXTRA_UA_APP_NAME.equals(str8) && !"backupAgent".equals(str8) && !"manageSpaceActivity".equals(str8) && !"appComponentFactory".equals(str8))) && !"targetActivity".equals(str8) && !"parentActivityName".equals(str8)) || !e(n, str).equals(e(aowVar.f10592b, str))))) {
                            throw f(hbjVar4, hbjVar3, str4 + "/" + str8);
                        }
                    }
                    b(hbjVar4, hbjVar3, str);
                    Iterator it4 = hbjVar3.f19177g.iterator();
                    while (it4.hasNext()) {
                        String str9 = (String) it4.next();
                        if (!arrayList2.contains(str9)) {
                            arrayList2.add(str9);
                        }
                    }
                } else {
                    if (arrayList != null && hbjVar3 != null) {
                        Iterator it5 = arrayList.iterator();
                        while (it5.hasNext()) {
                            if (r((hbj) it5.next(), hbjVar3)) {
                                Iterator it6 = arrayList.iterator();
                                while (it6.hasNext()) {
                                    hbj hbjVar6 = (hbj) it6.next();
                                    if (r(hbjVar6, hbjVar3)) {
                                        m(hbjVar6, hbjVar3);
                                    }
                                }
                            }
                        }
                    }
                    Iterator it7 = arrayList.iterator();
                    while (it7.hasNext()) {
                        hbj hbjVar7 = (hbj) it7.next();
                        String n2 = n(hbjVar3, "android", abn.EXTRA_UA_APP_NAME);
                        String str10 = hbjVar3.h;
                        if (str10.equals(hbjVar7.h) && n2 != null && n2.equals(n(hbjVar7, "android", abn.EXTRA_UA_APP_NAME))) {
                            throw f(hbjVar7, hbjVar3, str10 + ":" + n2);
                        }
                    }
                    hbjVar3.f19174d = hbjVar;
                    hbjVar.f19175e.add(hbjVar3);
                }
            }
        }
    }

    public static hbj c(String str, String str2, String[] strArr) {
        if (TextUtils.isEmpty(str2)) {
            throw new coz("base", str, null);
        }
        hbj m = awf.m(str2);
        s(m, str, str2, false);
        p(m, str2);
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        hashSet.add(str2);
        if (strArr != null) {
            for (String str3 : strArr) {
                if (TextUtils.isEmpty(str3) || !hashSet.add(str3)) {
                    throw new coz("split", String.valueOf(str3), null);
                }
                hbj m2 = awf.m(str3);
                s(m2, str, str3, true);
                if (!hashSet2.add(j(m2))) {
                    throw new coz("split", str3, null);
                }
                p(m2, str3);
                Iterator it = m2.f19172b.iterator();
                while (it.hasNext()) {
                    aow aowVar = (aow) it.next();
                    String str4 = aowVar.f10593c;
                    String str5 = aowVar.f10591a;
                    if ("xmlns".equals(str4)) {
                        String n = n(m, "xmlns", str5);
                        if (n == null) {
                            m.f19172b.add(aowVar);
                        } else if (!n.equals(aowVar.f10592b)) {
                            throw f(m, m2, "xmlns:" + str5);
                        }
                    }
                }
                String n2 = n(m2, "android", TTDownloadField.TT_VERSION_CODE);
                String n3 = n(m, "android", TTDownloadField.TT_VERSION_CODE);
                if (n2 != null && n3 != null && !n2.equals(n3)) {
                    throw f(m, m2, TTDownloadField.TT_VERSION_CODE);
                }
                b(m, m2, str);
                m.f19177g.add(str3);
            }
        }
        m.i = hashSet.size() > 1;
        k(m);
        return m;
    }

    public static String d(XmlPullParser xmlPullParser) {
        String namespace = xmlPullParser.getNamespace();
        if (TextUtils.isEmpty(namespace)) {
            return xmlPullParser.getName();
        }
        return o(namespace) + ":" + xmlPullParser.getName();
    }

    public static String e(String str, String str2) {
        return str.startsWith(".") ? awf.c(str2, str) : str.contains(".") ? str : awf.i(str2, ".", str);
    }

    public static coz f(hbj hbjVar, hbj hbjVar2, String str) {
        return new coz("conflict", hbjVar.f19177g + " / " + hbjVar2.f19177g + " → " + str, null);
    }

    public static hbj g(atk atkVar, String str) {
        try {
            ApplicationInfo applicationInfo = atkVar.getPackageManager().getApplicationInfo(str, 0);
            return c(str, applicationInfo.sourceDir, applicationInfo.splitSourceDirs);
        } catch (PackageManager.NameNotFoundException e2) {
            throw new coz("base", str, e2);
        } catch (coz e3) {
            throw e3;
        } catch (RuntimeException e4) {
            throw new coz("read", str, e4);
        }
    }

    public static String h(hbj hbjVar, String str) {
        String o = o(str);
        String n = n(hbjVar, "xmlns", o);
        if (n != null && !n.equals(str)) {
            throw new XmlPullParserException("Namespace conflict");
        }
        if (n == null) {
            aow aowVar = new aow(o, str);
            aowVar.f10593c = "xmlns";
            hbjVar.f19172b.add(aowVar);
        }
        return o;
    }

    public static void i(HashMap hashMap, ddf ddfVar) {
        hashMap.put(ddfVar.f14012c, ddfVar);
    }

    public static String j(hbj hbjVar) {
        ArrayList arrayList = hbjVar.f19172b;
        if (arrayList == null) {
            return null;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            aow aowVar = (aow) it.next();
            if (aowVar != null && TextUtils.isEmpty(aowVar.f10593c) && "split".equals(aowVar.f10591a)) {
                return aowVar.f10592b;
            }
        }
        return null;
    }

    public static void k(hbj hbjVar) {
        Iterator it = hbjVar.f19175e.iterator();
        int i = 0;
        int i2 = 1;
        while (it.hasNext()) {
            hbj hbjVar2 = (hbj) it.next();
            if (hbjVar2 != null) {
                k(hbjVar2);
                i2 += hbjVar2.f19171a;
                int i3 = hbjVar2.f19176f;
                if (i3 > i) {
                    i = i3;
                }
            }
        }
        hbjVar.f19171a = i2;
        hbjVar.f19176f = i + 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0115  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static hbj l(XmlResourceParser xmlResourceParser) {
        String attributeNamespace;
        int parseInt;
        int i;
        int eventType = xmlResourceParser.getEventType();
        hbj hbjVar = null;
        hbj hbjVar2 = null;
        while (eventType != 1) {
            int i2 = 3;
            int i3 = 2;
            if (eventType == 2) {
                hbj hbjVar3 = new hbj(d(xmlResourceParser));
                if (hbjVar2 != null) {
                    hbjVar3.f19174d = hbjVar2;
                    hbjVar2.f19175e.add(hbjVar3);
                } else {
                    if (hbjVar != null) {
                        throw new XmlPullParserException("Multiple roots");
                    }
                    aow aowVar = new aow("android", "http://schemas.android.com/apk/res/android");
                    aowVar.f10593c = "xmlns";
                    hbjVar3.f19172b.add(aowVar);
                    hbjVar = hbjVar3;
                }
                if (!TextUtils.isEmpty(xmlResourceParser.getNamespace())) {
                    h(hbjVar, xmlResourceParser.getNamespace());
                }
                int i4 = 0;
                while (i4 < xmlResourceParser.getAttributeCount()) {
                    String attributeName = xmlResourceParser.getAttributeName(i4);
                    String attributeValue = xmlResourceParser.getAttributeValue(i4);
                    if (attributeName != null && attributeValue != null) {
                        aow aowVar2 = new aow(attributeName, attributeValue);
                        ddf ddfVar = (ddf) f12302a.get(attributeName);
                        if (ddfVar != null) {
                            Pair[] pairArr = ddfVar.f14010a;
                            aowVar2.f10593c = ddfVar.f14011b;
                            if (!acw.n(pairArr)) {
                                try {
                                } catch (NumberFormatException e2) {
                                    Log.e(bwa.class.getSimpleName(), "", e2);
                                }
                                if (attributeValue.indexOf("0x") != 0 && attributeValue.indexOf("0X") != 0) {
                                    parseInt = attributeValue.indexOf("0") == 0 ? Integer.parseInt(attributeValue, 8) : Integer.parseInt(attributeValue);
                                    i = ddfVar.f14013d;
                                    if (i != 0 || parseInt == 0) {
                                        for (Pair pair : pairArr) {
                                            if (((Integer) pair.first).intValue() == parseInt) {
                                                aowVar2.f10592b = (String) pair.second;
                                            }
                                        }
                                    } else if (i == i2) {
                                        StringBuilder sb = new StringBuilder();
                                        boolean z = true;
                                        for (Pair pair2 : pairArr) {
                                            if (((Integer) pair2.first).intValue() != 0 && (((Integer) pair2.first).intValue() & parseInt) == ((Integer) pair2.first).intValue()) {
                                                if (!z) {
                                                    sb.append("|");
                                                }
                                                sb.append((String) pair2.second);
                                                z = false;
                                            }
                                        }
                                        aowVar2.f10592b = sb.toString();
                                    }
                                    attributeNamespace = xmlResourceParser.getAttributeNamespace(i4);
                                    if (TextUtils.isEmpty(attributeNamespace)) {
                                        aowVar2.f10593c = "";
                                    } else if ("http://schemas.android.com/apk/res/android".equals(attributeNamespace)) {
                                        aowVar2.f10593c = "android";
                                    } else {
                                        aowVar2.f10593c = h(hbjVar, attributeNamespace);
                                    }
                                    hbjVar3.f19172b.add(aowVar2);
                                }
                                parseInt = Integer.parseInt(attributeValue.substring(i3), 16);
                                i = ddfVar.f14013d;
                                if (i != 0) {
                                }
                                while (r3 < r0) {
                                }
                                attributeNamespace = xmlResourceParser.getAttributeNamespace(i4);
                                if (TextUtils.isEmpty(attributeNamespace)) {
                                }
                                hbjVar3.f19172b.add(aowVar2);
                            }
                        }
                        attributeNamespace = xmlResourceParser.getAttributeNamespace(i4);
                        if (TextUtils.isEmpty(attributeNamespace)) {
                        }
                        hbjVar3.f19172b.add(aowVar2);
                    }
                    i4++;
                    i2 = 3;
                    i3 = 2;
                }
                hbjVar2 = hbjVar3;
            } else if (eventType == 4 && hbjVar2 != null && !xmlResourceParser.isWhitespace()) {
                StringBuilder sb2 = new StringBuilder();
                String str = hbjVar2.f19173c;
                sb2.append(str != null ? str : "");
                sb2.append(xmlResourceParser.getText());
                hbjVar2.f19173c = sb2.toString();
            } else if (eventType != 3) {
                continue;
            } else {
                if (hbjVar2 == null || !hbjVar2.h.equals(d(xmlResourceParser))) {
                    throw new XmlPullParserException("Unbalanced XML");
                }
                hbjVar2 = hbjVar2.f19174d;
            }
            eventType = xmlResourceParser.next();
        }
        if (hbjVar == null || hbjVar2 != null || !"manifest".equals(hbjVar.h)) {
            throw new XmlPullParserException("Incomplete manifest");
        }
        hbjVar.i = !TextUtils.isEmpty(j(hbjVar));
        k(hbjVar);
        return hbjVar;
    }

    public static void m(hbj hbjVar, hbj hbjVar2) {
        Iterator it = hbjVar2.f19177g.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (!hbjVar.f19177g.contains(str)) {
                hbjVar.f19177g.add(str);
            }
        }
        for (int i = 0; i < hbjVar.f19175e.size(); i++) {
            m((hbj) hbjVar.f19175e.get(i), (hbj) hbjVar2.f19175e.get(i));
        }
    }

    public static String n(hbj hbjVar, String str, String str2) {
        Iterator it = hbjVar.f19172b.iterator();
        while (it.hasNext()) {
            aow aowVar = (aow) it.next();
            if (str.equals(aowVar.f10593c) && str2.equals(aowVar.f10591a)) {
                return aowVar.f10592b;
            }
        }
        return null;
    }

    public static String o(String str) {
        if ("http://schemas.android.com/apk/res/android".equals(str)) {
            return "android";
        }
        if ("http://www.w3.org/XML/1998/namespace".equals(str)) {
            return "xml";
        }
        return "ns" + Integer.toHexString(str.hashCode());
    }

    public static void p(hbj hbjVar, String str) {
        hbjVar.f19177g.add(str);
        Iterator it = hbjVar.f19175e.iterator();
        while (it.hasNext()) {
            p((hbj) it.next(), str);
        }
    }

    public static String q(hbj hbjVar, String str) {
        String str2;
        ArrayList arrayList;
        str2 = hbjVar.h;
        arrayList = hbjVar.f19177g;
        str2.getClass();
        switch (str2) {
            case "activity":
            case "provider":
            case "receiver":
            case "activity-alias":
            case "service":
                Iterator it = hbjVar.f19172b.iterator();
                while (it.hasNext()) {
                    aow aowVar = (aow) it.next();
                    if ("android".equals(aowVar.f10593c) && abn.EXTRA_UA_APP_NAME.equals(aowVar.f10591a)) {
                        String str3 = aowVar.f10592b;
                        if (TextUtils.isEmpty(str3)) {
                            throw new coz("conflict", arrayList.toString(), null);
                        }
                        String e2 = e(str3, str);
                        aowVar.f10592b = e2;
                        return awf.i(str2, ":", e2);
                    }
                }
                throw new coz("conflict", arrayList + ": " + str2, null);
            default:
                return null;
        }
    }

    public static boolean r(hbj hbjVar, hbj hbjVar2) {
        if (hbjVar == hbjVar2) {
            return true;
        }
        if (hbjVar != null) {
            ArrayList arrayList = hbjVar.f19175e;
            ArrayList arrayList2 = hbjVar.f19172b;
            if (hbjVar2 != null) {
                ArrayList arrayList3 = hbjVar2.f19175e;
                ArrayList arrayList4 = hbjVar2.f19172b;
                if (TextUtils.equals(hbjVar.h, hbjVar2.h) && TextUtils.equals(hbjVar.f19173c, hbjVar2.f19173c)) {
                    int size = arrayList2 != null ? arrayList2.size() : 0;
                    if (size == (arrayList4 != null ? arrayList4.size() : 0)) {
                        if (size > 0) {
                            Iterator it = arrayList2.iterator();
                            loop0: while (it.hasNext()) {
                                aow aowVar = (aow) it.next();
                                if (aowVar != null) {
                                    Iterator it2 = arrayList4.iterator();
                                    while (it2.hasNext()) {
                                        aow aowVar2 = (aow) it2.next();
                                        if (aowVar2 == null || !TextUtils.equals(aowVar.f10591a, aowVar2.f10591a) || !TextUtils.equals(aowVar.f10593c, aowVar2.f10593c) || !TextUtils.equals(aowVar.f10592b, aowVar2.f10592b)) {
                                        }
                                    }
                                    break loop0;
                                }
                            }
                        }
                        int size2 = arrayList != null ? arrayList.size() : 0;
                        if (size2 == (arrayList3 != null ? arrayList3.size() : 0)) {
                            if (size2 <= 0) {
                                return true;
                            }
                            for (int i = 0; i < size2; i++) {
                                if (r((hbj) arrayList.get(i), (hbj) arrayList3.get(i))) {
                                }
                            }
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public static void s(hbj hbjVar, String str, String str2, boolean z) {
        String str3;
        if ("manifest".equals(hbjVar.h)) {
            ArrayList arrayList = hbjVar.f19172b;
            if (arrayList != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    aow aowVar = (aow) it.next();
                    if (aowVar != null && TextUtils.isEmpty(aowVar.f10593c) && "package".equals(aowVar.f10591a)) {
                        str3 = aowVar.f10592b;
                        break;
                    }
                }
            }
            str3 = null;
            if (str.equals(str3) && z != TextUtils.isEmpty(j(hbjVar))) {
                return;
            }
        }
        throw new coz(z ? "split" : "base", str2, null);
    }
}
