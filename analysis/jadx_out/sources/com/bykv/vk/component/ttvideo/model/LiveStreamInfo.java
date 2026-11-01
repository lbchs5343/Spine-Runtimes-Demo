package com.bykv.vk.component.ttvideo.model;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bykv.vk.component.ttvideo.log.MyLog;
import com.bykv.vk.component.ttvideo.network.DnsHelper;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.abn;
import g.awf;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class LiveStreamInfo {
    public static final int LIVE_STREAM_INFO_CMAF_INVALID = 1;
    public static final int LIVE_STREAM_INFO_LLS_INVALID = 2;
    public static final String MPD_VERSION = "1.0";
    private JSONObject mCommonInfo;
    private String mDefaultResolution;
    private int mFlag;
    private String mHost;
    private String mIp;
    private boolean mIsABRListMatch;
    private String mRequestParams;
    private JSONObject mStreamInfo;
    private boolean mEnableOriginResolution = false;
    private long mAdjustedOriginBitRate = -1;
    private int mIsCodecSame = -1;
    private String mTransportProtocol = "";
    private String mPortNum = "";
    private int mRtcFallback = 0;
    private final String TAG = "LiveStreamInfo";
    public int mSRShorterSideUpperBound = 0;
    public int mSRLongerSideUpperBound = 0;
    private int mSRFrameRateUpperBound = 0;
    public int mSharpenLongerSideUpperBound = 0;
    public int mSharpenLongerSideLowerBound = 0;
    public int mSharpenShorterSideUpperBound = 0;
    public int mSharpenShorterSideLowerBound = 0;

    /* JADX WARN: Code restructure failed: missing block: B:31:0x009c, code lost:
    
        r6.mIsABRListMatch = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public LiveStreamInfo(JSONObject jSONObject) {
        JSONArray optJSONArray;
        this.mIsABRListMatch = false;
        if (jSONObject == null) {
            return;
        }
        try {
            this.mStreamInfo = jSONObject.getJSONObject("data");
            if (jSONObject.has("common")) {
                this.mCommonInfo = jSONObject.getJSONObject("common");
            }
            JSONObject jSONObject2 = this.mCommonInfo;
            if (jSONObject2 != null) {
                JSONObject jSONObject3 = jSONObject2.getJSONObject(LiveConfigKey.AUTO);
                if (jSONObject3 != null && jSONObject3.has("default")) {
                    this.mDefaultResolution = jSONObject3.getString("default");
                    MyLog.i("LiveStreamInfo", "mDefaultResolution: " + this.mDefaultResolution);
                }
                this.mIsABRListMatch = true;
                if (jSONObject3 != null && jSONObject3.has("list") && (optJSONArray = jSONObject3.optJSONArray("list")) != null && optJSONArray.length() > 0) {
                    int i = 0;
                    while (true) {
                        if (i >= optJSONArray.length()) {
                            break;
                        } else if (!isSupport(optJSONArray.getString(i))) {
                            break;
                        } else {
                            i++;
                        }
                    }
                }
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        this.mFlag = 0;
    }

    private boolean isNeedUseDefaultResolution(String str) {
        return (TextUtils.isEmpty(str) || !str.equals(LiveConfigKey.AUTO) || TextUtils.isEmpty(this.mDefaultResolution)) ? false : true;
    }

    private String set_url_port_scheme(String str) {
        int indexOf;
        int indexOf2 = str.indexOf(".com");
        int indexOf3 = str.indexOf(".com:");
        StringBuilder sb = new StringBuilder(str);
        if (!TextUtils.isEmpty(this.mPortNum)) {
            if (indexOf3 != -1) {
                int i = indexOf3 + 5;
                int i2 = indexOf3 + 6;
                while (i2 < sb.length() && sb.charAt(i2) - '0' >= 0 && sb.charAt(i2) - '0' <= 9) {
                    i2++;
                }
                sb.replace(i, i2, this.mPortNum);
            } else if (indexOf2 != -1 && ((indexOf = str.indexOf("vhost")) == -1 || indexOf > indexOf2)) {
                sb.insert(indexOf2 + 4, ":" + this.mPortNum);
            }
        }
        StringBuilder sb2 = new StringBuilder(sb.toString());
        int indexOf4 = sb2.indexOf("://");
        if (!TextUtils.isEmpty(this.mTransportProtocol)) {
            if (this.mTransportProtocol.equals(LiveConfigKey.KCP)) {
                if (indexOf4 != -1) {
                    sb2.replace(0, indexOf4, "httpk");
                }
            } else if (this.mTransportProtocol.equals(LiveConfigKey.QUIC) || this.mTransportProtocol.equals(LiveConfigKey.QUICU)) {
                if (indexOf4 != -1) {
                    sb2.replace(0, indexOf4, "httpq");
                }
            } else if (this.mTransportProtocol.equals(LiveConfigKey.TLS)) {
                if (indexOf4 != -1) {
                    sb2.replace(0, indexOf4, "https");
                }
            } else if (this.mTransportProtocol.equals(LiveConfigKey.TCP) && indexOf4 != -1) {
                sb2.replace(0, indexOf4, "http");
            }
        }
        return sb2.toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x007f, code lost:
    
        if (r5.equals(com.bykv.vk.component.ttvideo.LiveConfigKey.ORIGIN) == false) goto L20;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean adjustOriginBitRate(String str, String str2, long j) {
        long j2 = 0;
        if (this.mAdjustedOriginBitRate > 0) {
            return true;
        }
        long j3 = -1;
        String str3 = LiveConfigKey.LOW;
        while (true) {
            char c2 = 0;
            if (TextUtils.isEmpty(str3)) {
                return this.mAdjustedOriginBitRate > j2;
            }
            if (!TextUtils.isEmpty(getStreamUrlForResolution(str3, str, str2))) {
                long bitrate = getBitrate(str3, str2);
                if (str3.equals(LiveConfigKey.ORIGIN) && bitrate <= j3 && j > j2) {
                    this.mAdjustedOriginBitRate = j;
                    bitrate = j;
                }
                j3 = bitrate;
            }
            str3.getClass();
            long j4 = j2;
            switch (str3.hashCode()) {
                case -1008619738:
                    break;
                case 3324:
                    if (str3.equals(LiveConfigKey.HIGH)) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3448:
                    if (str3.equals(LiveConfigKey.LOW)) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3665:
                    if (str3.equals(LiveConfigKey.STANDARD)) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 115761:
                    if (str3.equals(LiveConfigKey.UHD)) {
                        c2 = 4;
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            str3 = null;
            switch (c2) {
                case 1:
                    str3 = LiveConfigKey.UHD;
                    break;
                case 2:
                    str3 = LiveConfigKey.STANDARD;
                    break;
                case 3:
                    str3 = LiveConfigKey.HIGH;
                    break;
                case 4:
                    str3 = LiveConfigKey.ORIGIN;
                    break;
            }
            j2 = j4;
        }
    }

    public JSONObject getAbrInfo() {
        JSONObject jSONObject = this.mCommonInfo;
        if (jSONObject == null) {
            return null;
        }
        try {
            return jSONObject.getJSONObject(LiveConfigKey.AUTO);
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public String getAvLinesParams(String str, String str2) {
        if (isNeedUseDefaultResolution(str)) {
            str = this.mDefaultResolution;
        }
        try {
            String sDKParams = getSDKParams(str, str2);
            if (sDKParams != null) {
                return new JSONObject(sDKParams).optString("AvLines");
            }
            return null;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public long getBitrate(String str, String str2) {
        if (isNeedUseDefaultResolution(str)) {
            str = this.mDefaultResolution;
        }
        if (!isSupport(str)) {
            return 0L;
        }
        try {
            return new JSONObject(this.mStreamInfo.getJSONObject(str).getJSONObject(str2).optString("sdk_params")).optLong("vbitrate");
        } catch (JSONException e2) {
            e2.printStackTrace();
            return 0L;
        }
    }

    public int getCheckSilenceInterval(String str, String str2) {
        if (isNeedUseDefaultResolution(str)) {
            str = this.mDefaultResolution;
        }
        if (!isSupport(str)) {
            return -1;
        }
        try {
            String sDKParams = getSDKParams(str, str2);
            if (sDKParams != null) {
                return new JSONObject(sDKParams).optInt("CheckSilenceInterval");
            }
            return -1;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return -1;
        }
    }

    public String getDefaultResolution() {
        return this.mDefaultResolution;
    }

    public long getGopDuration(String str, String str2) {
        if (isNeedUseDefaultResolution(str)) {
            str = this.mDefaultResolution;
        }
        if (!isSupport(str)) {
            return 0L;
        }
        try {
            return new JSONObject(this.mStreamInfo.getJSONObject(str).getJSONObject(str2).optString("sdk_params")).optLong("gop");
        } catch (JSONException e2) {
            e2.printStackTrace();
            return 0L;
        }
    }

    public Map<String, String> getHTTPHeaders() {
        JSONObject jSONObject = this.mCommonInfo;
        if (jSONObject != null && jSONObject.has("header")) {
            HashMap hashMap = new HashMap();
            try {
                JSONObject jSONObject2 = this.mCommonInfo.getJSONObject("header");
                Iterator<String> keys = jSONObject2.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    hashMap.put(next, jSONObject2.getString(next));
                }
                return hashMap;
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    public String getLabelfromBitrate(long j, String str) {
        JSONObject jSONObject = this.mStreamInfo;
        if (jSONObject == null || jSONObject.length() <= 0) {
            return null;
        }
        Iterator<String> keys = this.mStreamInfo.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            if (isEnableAdaptive(next) && j == getBitrate(next, str) / 1000) {
                return next;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ae A[Catch: JSONException -> 0x0083, TryCatch #0 {JSONException -> 0x0083, blocks: (B:27:0x0052, B:31:0x0079, B:33:0x007f, B:34:0x0090, B:36:0x00ae, B:38:0x00b5, B:39:0x00ca, B:41:0x00d2, B:45:0x00ee, B:47:0x00f8, B:48:0x0107, B:50:0x010e, B:51:0x0115, B:54:0x0104, B:55:0x0089, B:71:0x013d), top: B:26:0x0052 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x010e A[Catch: JSONException -> 0x0083, TryCatch #0 {JSONException -> 0x0083, blocks: (B:27:0x0052, B:31:0x0079, B:33:0x007f, B:34:0x0090, B:36:0x00ae, B:38:0x00b5, B:39:0x00ca, B:41:0x00d2, B:45:0x00ee, B:47:0x00f8, B:48:0x0107, B:50:0x010e, B:51:0x0115, B:54:0x0104, B:55:0x0089, B:71:0x013d), top: B:26:0x0052 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0113  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String getMPDForFormat(String str, String str2, String str3, String str4) {
        String str5;
        JSONObject jSONObject;
        ArrayList arrayList;
        JSONObject jSONObject2;
        int i;
        JSONObject jSONObject3;
        long j;
        String streamUrlForResolution;
        JSONObject jSONObject4;
        long j2;
        JSONObject jSONObject5 = this.mStreamInfo;
        if (jSONObject5 == null || jSONObject5.length() <= 0) {
            return null;
        }
        JSONObject jSONObject6 = new JSONObject();
        Iterator<String> keys = this.mStreamInfo.keys();
        try {
            arrayList = new ArrayList();
            jSONObject2 = new JSONObject();
            String str6 = null;
            long j3 = 0;
            i = 0;
            while (keys.hasNext()) {
                try {
                    String next = keys.next();
                    if (!isEnableAdaptive(next) || (streamUrlForResolution = getStreamUrlForResolution(next, str, str2)) == null) {
                        jSONObject6 = jSONObject6;
                        str6 = str6;
                        i = i;
                        j3 = j3;
                    } else {
                        str5 = str6;
                        try {
                            JSONObject jSONObject7 = new JSONObject();
                            jSONObject7.put(TTDownloadField.TT_ID, i);
                            int i2 = i;
                            jSONObject7.put("codec", getVCodec(next, str2));
                            jSONObject7.put("format", str);
                            if (next.equals(LiveConfigKey.ORIGIN)) {
                                jSONObject4 = jSONObject6;
                                j2 = j3;
                                long j4 = this.mAdjustedOriginBitRate;
                                if (j4 > 0) {
                                    jSONObject7.put(MediaFormat.KEY_BIT_RATE, j4);
                                    jSONObject7.put("qualityType", next);
                                    jSONObject7.put("hidden", 0);
                                    jSONObject7.put("defaultSelect", this.mDefaultResolution.equals(next) ? 1 : 0);
                                    if (!this.mRequestParams.isEmpty()) {
                                        int indexOf = streamUrlForResolution.indexOf("?");
                                        if (indexOf == -1) {
                                            streamUrlForResolution = streamUrlForResolution + "?" + this.mRequestParams;
                                        } else if (indexOf != streamUrlForResolution.length() - 1) {
                                            streamUrlForResolution = streamUrlForResolution + "&" + this.mRequestParams;
                                        }
                                    }
                                    if (str3 == null && str4 != null && DnsHelper.getUrlHost(streamUrlForResolution).equals(str4)) {
                                        jSONObject7.put(abn.EXTRA_URL, DnsHelper.hostToIPUrl(set_url_port_scheme(streamUrlForResolution), str3));
                                    } else {
                                        jSONObject7.put(abn.EXTRA_URL, streamUrlForResolution);
                                    }
                                    arrayList.add(jSONObject7);
                                    i = i2 + 1;
                                    jSONObject6 = jSONObject4;
                                    j3 = j2 != 0 ? getGopDuration(next, str2) : j2;
                                    str6 = str5;
                                }
                            } else {
                                jSONObject4 = jSONObject6;
                                j2 = j3;
                            }
                            jSONObject7.put(MediaFormat.KEY_BIT_RATE, getBitrate(next, str2));
                            jSONObject7.put("qualityType", next);
                            jSONObject7.put("hidden", 0);
                            jSONObject7.put("defaultSelect", this.mDefaultResolution.equals(next) ? 1 : 0);
                            if (!this.mRequestParams.isEmpty()) {
                            }
                            if (str3 == null) {
                            }
                            jSONObject7.put(abn.EXTRA_URL, streamUrlForResolution);
                            arrayList.add(jSONObject7);
                            i = i2 + 1;
                            jSONObject6 = jSONObject4;
                            j3 = j2 != 0 ? getGopDuration(next, str2) : j2;
                            str6 = str5;
                        } catch (JSONException e2) {
                            e = e2;
                            e.printStackTrace();
                            jSONObject = str5;
                            if (jSONObject != 0) {
                            }
                        }
                    }
                } catch (JSONException e3) {
                    e = e3;
                    str5 = str6;
                }
            }
            jSONObject3 = jSONObject6;
            j = j3;
            str5 = str6;
        } catch (JSONException e4) {
            e = e4;
            str5 = null;
        }
        if (i == 0) {
            return str5;
        }
        jSONObject2.put("gopDuration", j);
        jSONObject2.put("representation", new JSONArray((Collection) arrayList));
        jSONObject3.put("version", "1.0");
        jSONObject3.put("adaptationSet", jSONObject2);
        jSONObject = jSONObject3;
        return (jSONObject != 0 || jSONObject.length() <= 0) ? str5 : jSONObject.toString();
    }

    public String getPortNum(String str, String str2, String str3) {
        String str4;
        if (this.mCommonInfo == null) {
            return null;
        }
        try {
            str4 = new JSONObject(this.mCommonInfo.getJSONObject(str.equals(LiveConfigKey.RTMP) ? "rtmp_ports" : "http_ports").optString(str2)).optString(str3);
        } catch (JSONException e2) {
            e2.printStackTrace();
            str4 = null;
        }
        if (TextUtils.isEmpty(str4)) {
            return null;
        }
        return str4;
    }

    public String getQueryItems() {
        JSONObject jSONObject = this.mCommonInfo;
        if (jSONObject != null && jSONObject.has("query")) {
            StringBuilder sb = new StringBuilder();
            try {
                JSONObject jSONObject2 = this.mCommonInfo.getJSONObject("query");
                Iterator<String> keys = jSONObject2.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    String string = jSONObject2.getString(next);
                    String encode = URLEncoder.encode(next, "UTF-8");
                    String encode2 = URLEncoder.encode(string, "UTF-8");
                    sb.append("&");
                    sb.append(encode);
                    sb.append("=");
                    sb.append(encode2);
                }
                return sb.toString();
            } catch (UnsupportedEncodingException e2) {
                e = e2;
                e.printStackTrace();
                return null;
            } catch (JSONException e3) {
                e = e3;
                e.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public String getRuleIds() {
        JSONObject jSONObject = this.mCommonInfo;
        if (jSONObject == null || !jSONObject.has("rule_ids")) {
            return null;
        }
        return this.mCommonInfo.optString("rule_ids");
    }

    public String getSDKParams(String str, String str2) {
        if (isNeedUseDefaultResolution(str)) {
            str = this.mDefaultResolution;
        }
        if (!isSupport(str)) {
            return null;
        }
        try {
            return this.mStreamInfo.getJSONObject(str).getJSONObject(str2).optString("sdk_params");
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public boolean getSREnabled(String str, String str2, int i) {
        if (isNeedUseDefaultResolution(str)) {
            str = this.mDefaultResolution;
        }
        if (!isSupport(str)) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(this.mStreamInfo.getJSONObject(str).getJSONObject(str2).optString("sdk_params"));
            long optLong = jSONObject.optLong("vbitrate");
            JSONObject jSONObject2 = new JSONObject(jSONObject.optString("NNSR"));
            int optInt = i == 1 ? jSONObject2.optInt("Enabled") : 0;
            long optLong2 = jSONObject2.optLong("VBitrateLowerBoundInKbps");
            this.mSRShorterSideUpperBound = jSONObject2.optInt("ShorterSideUpperBound");
            this.mSRLongerSideUpperBound = jSONObject2.optInt("LongerSideUpperBound");
            int optInt2 = jSONObject2.optInt("FrameRateUpperBound");
            this.mSRFrameRateUpperBound = optInt2;
            return optInt == 1 && optLong >= optLong2 * 1000 && this.mSRShorterSideUpperBound > 0 && this.mSRLongerSideUpperBound > 0 && optInt2 > 0;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public int getSRLongerSideUpperBound() {
        return this.mSRLongerSideUpperBound;
    }

    public int getSRShorterSideUpperBound() {
        return this.mSRShorterSideUpperBound;
    }

    public String getSessionID() {
        JSONObject jSONObject = this.mCommonInfo;
        if (jSONObject == null || !jSONObject.has("session_id")) {
            return null;
        }
        return this.mCommonInfo.optString("session_id");
    }

    public JSONObject getSharpenParams(String str, String str2) {
        if (isNeedUseDefaultResolution(str)) {
            str = this.mDefaultResolution;
        }
        if (!isSupport(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(new JSONObject(this.mStreamInfo.getJSONObject(str).getJSONObject(str2).optString("sdk_params")).optString("ASF"));
            this.mSharpenLongerSideUpperBound = jSONObject.optInt("LongerSideUpperBound");
            this.mSharpenLongerSideLowerBound = jSONObject.optInt("LongerSideLowerBound");
            this.mSharpenShorterSideUpperBound = jSONObject.optInt("ShorterSideUpperBound");
            this.mSharpenShorterSideLowerBound = jSONObject.optInt("ShorterSideLowerBound");
            return jSONObject;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String getStreamUrlForResolution(String str, String str2, String str3) {
        JSONObject jSONObject;
        String str4;
        boolean equals;
        String queryItems;
        JSONObject jSONObject2;
        String str5 = null;
        if (!TextUtils.isEmpty(str) && str.equals(LiveConfigKey.AUTO)) {
            if (TextUtils.isEmpty(this.mDefaultResolution)) {
                return null;
            }
            return getMPDForFormat(str2, str3, this.mIp, this.mHost);
        }
        if (!isSupport(str)) {
            return null;
        }
        try {
            jSONObject2 = new JSONObject(this.mStreamInfo.optString(str));
        } catch (JSONException e2) {
            e = e2;
            jSONObject = null;
        }
        if (jSONObject2.has(str3)) {
            jSONObject = new JSONObject(jSONObject2.optString(str3));
            try {
                JSONObject jSONObject3 = new JSONObject(jSONObject.optString("sdk_params"));
                if (jSONObject3.has("SuggestFormat")) {
                    str4 = jSONObject3.optString("SuggestFormat");
                }
            } catch (JSONException e3) {
                e = e3;
                e.printStackTrace();
                str4 = null;
                equals = LiveConfigKey.AVPH.equals(str2);
                String str6 = LiveConfigKey.FLV;
                if (equals) {
                }
                if (str4 != null) {
                }
                str4 = str2;
                if ((this.mFlag & 1) > 0) {
                }
                str2 = str4;
                if (this.mRtcFallback != 1) {
                }
                str2 = LiveConfigKey.FLV;
                if (jSONObject != null) {
                }
                return str5 != null ? str5 : str5;
            }
            str4 = null;
        } else {
            str4 = null;
            jSONObject = null;
        }
        equals = LiveConfigKey.AVPH.equals(str2);
        String str62 = LiveConfigKey.FLV;
        if (equals) {
            str2 = LiveConfigKey.FLV;
        }
        if (str4 != null || str4.equals("") || str4.equals(LiveConfigKey.AVPH)) {
            str4 = str2;
        }
        if ((this.mFlag & 1) > 0 || !str4.equals(LiveConfigKey.CMAF)) {
            str2 = str4;
        }
        if (this.mRtcFallback != 1 || (this.mFlag & 2) > 0) {
            str2 = LiveConfigKey.FLV;
        }
        if (jSONObject != null) {
            if (str2 == null || !str2.equals(LiveConfigKey.AVPH)) {
                str62 = str2;
            }
            str5 = jSONObject.optString(str62);
        }
        if (str5 != null || (queryItems = getQueryItems()) == null || queryItems.equals("")) {
            return str5;
        }
        int indexOf = str5.indexOf("?");
        if (indexOf == -1) {
            queryItems = "?" + queryItems.substring(1);
        } else if (indexOf == str5.length() - 1) {
            queryItems = queryItems.substring(1);
        }
        return awf.c(str5, queryItems);
    }

    public String getSuggestFormat(String str, String str2) {
        String str3;
        if (isNeedUseDefaultResolution(str)) {
            str = this.mDefaultResolution;
        }
        if (!isSupport(str)) {
            return null;
        }
        try {
            str3 = new JSONObject(this.mStreamInfo.getJSONObject(str).getJSONObject(str2).optString("sdk_params")).optString("SuggestFormat");
        } catch (JSONException e2) {
            e2.printStackTrace();
            str3 = null;
        }
        if (str3 == null || str3.isEmpty()) {
            return null;
        }
        return str3;
    }

    public String getSuggestProtocol(String str, String str2) {
        String str3;
        if (isNeedUseDefaultResolution(str)) {
            str = this.mDefaultResolution;
        }
        if (!isSupport(str)) {
            return null;
        }
        try {
            new JSONObject(this.mStreamInfo.getJSONObject(str).getJSONObject(str2).optString("sdk_params")).optString("SuggestProtocol");
            str3 = LiveConfigKey.TCP;
        } catch (JSONException e2) {
            e2.printStackTrace();
            str3 = null;
        }
        if (str3 == null || str3.isEmpty()) {
            return null;
        }
        return str3;
    }

    public String getVCodec(String str, String str2) {
        if (isNeedUseDefaultResolution(str)) {
            str = this.mDefaultResolution;
        }
        if (!isSupport(str)) {
            return null;
        }
        try {
            return new JSONObject(this.mStreamInfo.getJSONObject(str).getJSONObject(str2).optString("sdk_params")).optString("VCodec");
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public boolean isABRListMatch() {
        return this.mIsABRListMatch;
    }

    public boolean isCodecSame(String str) {
        JSONObject jSONObject = this.mStreamInfo;
        if (jSONObject == null || jSONObject.length() <= 0) {
            return false;
        }
        int i = this.mIsCodecSame;
        if (i >= 0) {
            return i == 1;
        }
        this.mIsCodecSame = 1;
        Iterator<String> keys = this.mStreamInfo.keys();
        String str2 = null;
        String str3 = null;
        while (true) {
            if (!keys.hasNext()) {
                break;
            }
            str3 = getVCodec(keys.next(), str);
            if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3) && !str3.equals(str2)) {
                this.mIsCodecSame = 0;
                break;
            }
            if (!TextUtils.isEmpty(str3)) {
                str2 = str3;
            }
        }
        if (TextUtils.isEmpty(str3) && TextUtils.isEmpty(str2)) {
            this.mIsCodecSame = 0;
        }
        return this.mIsCodecSame == 1;
    }

    public boolean isEnableAdaptive(String str) {
        JSONArray optJSONArray;
        if (isNeedUseDefaultResolution(str)) {
            str = this.mDefaultResolution;
        }
        if (!isSupport(str)) {
            return false;
        }
        try {
            JSONObject abrInfo = getAbrInfo();
            if (abrInfo != null && abrInfo.has("list") && (optJSONArray = abrInfo.optJSONArray("list")) != null && optJSONArray.length() > 0) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    String string = optJSONArray.getString(i);
                    if (string != null && string.equals(str) && (!string.equals(LiveConfigKey.ORIGIN) || this.mEnableOriginResolution)) {
                        return true;
                    }
                }
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return false;
    }

    public boolean isSupport(String str) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = this.mStreamInfo;
        if (jSONObject2 == null) {
            return false;
        }
        try {
            jSONObject = jSONObject2.getJSONObject(str);
        } catch (JSONException e2) {
            e2.printStackTrace();
            jSONObject = null;
        }
        return jSONObject != null;
    }

    public boolean isSupportSR(int i, int i2, float f2) {
        return Math.max(i, i2) <= this.mSRLongerSideUpperBound && Math.min(i, i2) <= this.mSRShorterSideUpperBound && f2 <= ((float) this.mSRFrameRateUpperBound) && i < i2;
    }

    public boolean isSupportSharpen(int i, int i2) {
        int max = Math.max(i, i2);
        int min = Math.min(i, i2);
        return max >= this.mSharpenLongerSideLowerBound && max <= this.mSharpenLongerSideUpperBound && min >= this.mSharpenShorterSideLowerBound && min <= this.mSharpenShorterSideUpperBound;
    }

    public void setDefaultResolution(String str) {
        if (isNeedUseDefaultResolution(str)) {
            str = this.mDefaultResolution;
        }
        if (isSupport(str)) {
            this.mDefaultResolution = str;
        }
    }

    public void setEnableOriginResolution(boolean z) {
        this.mEnableOriginResolution = z;
    }

    public boolean setFlag(int i) {
        this.mFlag = i | this.mFlag;
        return true;
    }

    public void setRequestParams(String str) {
        this.mRequestParams = str;
    }

    public void setRequestParamsWithDNSIp(String str, String str2, String str3) {
        this.mRequestParams = str;
        this.mIp = str2;
        this.mHost = str3;
    }

    public void setRtcFallback(int i) {
        this.mRtcFallback = i;
    }

    public void setTransportProtocol(String str, String str2) {
        this.mTransportProtocol = str;
        this.mPortNum = str2;
    }
}
