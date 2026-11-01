package com.bytedance.sdk.openadsdk.ig;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.component.d.dq.f;
import com.bytedance.sdk.component.d.dq.ig;
import com.bytedance.sdk.component.d.dq.iw;
import com.bytedance.sdk.component.d.dq.jy;
import com.bytedance.sdk.component.d.dq.o;
import com.bytedance.sdk.component.d.dq.q;
import com.bytedance.sdk.component.o.mn;
import com.bytedance.sdk.component.utils.q;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.core.i;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.core.wp;
import com.ss.android.download.api.constant.BaseConstants;
import g.awf;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedDeque;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public abstract class dq {
    public com.bytedance.sdk.openadsdk.ig.d dq;
    private String ia;
    protected JSONObject iw;
    private String kk;
    protected String mn;
    private String o;
    private long q;
    public static final AtomicInteger p = new AtomicInteger(0);
    private static final ConcurrentLinkedDeque<String> no = new ConcurrentLinkedDeque<>();

    /* renamed from: d, reason: collision with root package name */
    protected AtomicBoolean f3764d = new AtomicBoolean(false);
    protected AtomicBoolean ox = new AtomicBoolean(false);
    private HashMap<String, HashMap<String, byte[]>> ig = new HashMap<>();
    final ExecutorService s = mn.dq();
    private final String mp = "index_censorship.json";
    private AtomicInteger jy = new AtomicInteger(0);

    public class d extends Exception {

        /* renamed from: d, reason: collision with root package name */
        boolean f3769d;
        boolean dq;
        long ox;

        public d(boolean z) {
            this.dq = z;
        }

        public d(boolean z, long j) {
            this.dq = z;
            this.ox = j;
        }

        public d(boolean z, boolean z2, long j) {
            this.dq = z;
            this.f3769d = z2;
            this.ox = j;
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.ig.dq$dq, reason: collision with other inner class name */
    public interface InterfaceC0201dq {
        void dq(boolean z, Map<String, Object> map);
    }

    public dq(com.bytedance.sdk.openadsdk.ig.d dVar, String str, String str2, String str3, String str4) {
        this.mn = "";
        this.dq = dVar;
        this.ia = str;
        this.mn = str4;
        this.kk = str2;
        JSONObject jSONObject = new JSONObject();
        this.iw = jSONObject;
        try {
            jSONObject.putOpt("log_extra", str3);
            this.iw.putOpt("cid", str);
            this.iw.putOpt("ac", Integer.valueOf(q.ox(wp.getContext())));
            this.iw.putOpt("resource_type", "union");
            this.iw.putOpt("app_name", no.ia().q());
            this.iw.putOpt(PluginConstants.KEY_APP_ID, no.ia().mp());
            this.iw.putOpt("app_version", com.bytedance.sdk.openadsdk.core.mn.dq.p());
            this.iw.putOpt(PluginConstants.KEY_SDK_VERSION, op.ox);
            this.iw.putOpt(PluginConstants.KEY_PLUGIN_VERSION, "6.6.0.7");
            this.iw.putOpt("ts", Long.valueOf(System.currentTimeMillis() / 1000));
            this.iw.putOpt("platform", "Android");
            this.iw.putOpt("device_id", i.ox());
            this.iw.putOpt("web_url", str4);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        p.incrementAndGet();
        dq(str, str2);
    }

    private int d(byte[] bArr, int i, File file) {
        if (i <= 0) {
            return -1;
        }
        return dq(bArr, i - 1, file);
    }

    public static String d(Context context) {
        StringBuilder sb = new StringBuilder();
        sb.append(com.bytedance.sdk.openadsdk.api.plugin.d.d(context).getAbsolutePath());
        return awf.ad(sb, File.separator, ".lp_cache");
    }

    private void d(Context context, String str, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse, o oVar, Map<String, Object> map) {
        int i;
        if (ox.dq()) {
            String uri = webResourceRequest.getUrl().toString();
            String d2 = oVar.d();
            if (TextUtils.equals(d2.toLowerCase(), "javascript")) {
                d2 = "js";
            }
            String str2 = s.d(uri) + "." + d2;
            if (TextUtils.isEmpty(d2)) {
                return;
            }
            HashMap<String, byte[]> hashMap = this.ig.get(d2);
            if (hashMap == null) {
                hashMap = new HashMap<>();
                this.ig.put(d2, hashMap);
            }
            ArrayList arrayList = new ArrayList();
            byte[] bArr = new byte[1024];
            InputStream data = webResourceResponse.getData();
            while (true) {
                try {
                    try {
                        try {
                            i = 0;
                            if (data.read(bArr) == -1) {
                                break;
                            }
                            while (i < 1024) {
                                arrayList.add(Byte.valueOf(bArr[i]));
                                i++;
                            }
                        } finally {
                        }
                    } catch (IOException e2) {
                        e2.printStackTrace();
                        return;
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                    if (data != null) {
                        data.close();
                        return;
                    }
                    return;
                }
            }
            byte[] bArr2 = new byte[arrayList.size()];
            while (i < arrayList.size()) {
                bArr2[i] = ((Byte) arrayList.get(i)).byteValue();
                i++;
            }
            if (arrayList.size() <= wp.d().nh() * BaseConstants.MB_VALUE) {
                hashMap.put(str2, bArr2);
                dq(this.iw, str, oVar, str2, uri, webResourceRequest.getRequestHeaders(), map);
            }
            data.close();
        }
    }

    private boolean d(String str, String str2) {
        try {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            com.bytedance.sdk.openadsdk.ig.dq.d.dq(str, str2);
            return true;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    private int dq(byte[] bArr, int i, File file) {
        try {
            ig iw = com.bytedance.sdk.openadsdk.core.le.s.dq().d().iw();
            jy dq = jy.dq(o.dq("multipart/form-data"), bArr, "file", file.getName());
            String t = wp.d().t();
            String str = "?aid=" + no.ia().mp() + "&device_platform=android&device_type=android&source_type=union";
            f dq2 = iw.dq(new q.dq().dq(t + str).dq(dq).d()).dq();
            if (dq2.ox() != 200) {
                return d(bArr, i, file);
            }
            JSONObject jSONObject = new JSONObject(dq2.iw().d());
            int optInt = jSONObject.optInt(PluginConstants.KEY_ERROR_CODE);
            String optString = jSONObject.optString("msg");
            if (optInt == 0 && TextUtils.equals("success", optString)) {
                return 200;
            }
            return d(bArr, i, file);
        } catch (Throwable th) {
            th.printStackTrace();
            th.getMessage();
            return d(bArr, i, file);
        }
    }

    private Pair<WebResourceResponse, o> dq(WebResourceRequest webResourceRequest) {
        if (ox.dq() && webResourceRequest != null) {
            try {
                ig iw = com.bytedance.sdk.openadsdk.core.le.s.dq().d().iw();
                q.dq dqVar = new q.dq();
                Map<String, String> requestHeaders = webResourceRequest.getRequestHeaders();
                if (requestHeaders != null) {
                    for (String str : requestHeaders.keySet()) {
                        dqVar.d(str, requestHeaders.get(str));
                    }
                }
                dqVar.dq(webResourceRequest.getUrl().toString());
                f dq = iw.dq(dqVar.d()).dq();
                int ox = dq.ox();
                if (ox == 200) {
                    HashMap hashMap = new HashMap();
                    iw mn = dq.mn();
                    if (mn != null) {
                        for (int i = 0; i < mn.dq(); i++) {
                            hashMap.put(mn.dq(i), mn.d(i));
                        }
                    }
                    InputStream ox2 = dq.iw().ox();
                    o dq2 = dq(hashMap);
                    return new Pair<>(new WebResourceResponse(dq2.dq() + "/" + dq2.d(), dq2.ox() == null ? null : dq2.ox().toString(), ox, dq(ox), hashMap, ox2), dq2);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x008b A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Pair<WebResourceResponse, WebResourceResponse> dq(WebResourceResponse webResourceResponse) {
        ByteArrayInputStream byteArrayInputStream;
        ByteArrayInputStream byteArrayInputStream2;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            if (com.bytedance.sdk.openadsdk.ig.dq.d.dq(webResourceResponse.getData(), byteArrayOutputStream) != -1) {
                byteArrayInputStream = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
                try {
                    byteArrayInputStream2 = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
                } catch (Exception e2) {
                    e = e2;
                    e.printStackTrace();
                    try {
                        byteArrayOutputStream.close();
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                    byteArrayInputStream2 = null;
                    if (ox.dq()) {
                    }
                }
            } else {
                byteArrayInputStream2 = null;
                byteArrayInputStream = null;
            }
        } catch (Exception e3) {
            e = e3;
            byteArrayInputStream = null;
        }
        if (ox.dq()) {
            return null;
        }
        String mimeType = webResourceResponse.getMimeType();
        String encoding = webResourceResponse.getEncoding();
        int statusCode = webResourceResponse.getStatusCode();
        String reasonPhrase = webResourceResponse.getReasonPhrase();
        Map<String, String> responseHeaders = webResourceResponse.getResponseHeaders();
        if (byteArrayInputStream == null) {
            byteArrayInputStream = new ByteArrayInputStream(new byte[0]);
        }
        WebResourceResponse webResourceResponse2 = new WebResourceResponse(mimeType, encoding, statusCode, reasonPhrase, responseHeaders, byteArrayInputStream);
        String mimeType2 = webResourceResponse.getMimeType();
        String encoding2 = webResourceResponse.getEncoding();
        int statusCode2 = webResourceResponse.getStatusCode();
        String reasonPhrase2 = webResourceResponse.getReasonPhrase();
        Map<String, String> responseHeaders2 = webResourceResponse.getResponseHeaders();
        if (byteArrayInputStream2 == null) {
            byteArrayInputStream2 = new ByteArrayInputStream(new byte[0]);
        }
        return new Pair<>(webResourceResponse2, new WebResourceResponse(mimeType2, encoding2, statusCode2, reasonPhrase2, responseHeaders2, byteArrayInputStream2));
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private o dq(Map<String, String> map) {
        String str;
        if (map != null) {
            if (map.containsKey("Content-Type")) {
                str = map.get("Content-Type");
            } else if (map.containsKey("content-type")) {
                str = map.get("content-type");
            } else if (map.containsKey("CONTENT-TYPE")) {
                str = map.get("CONTENT-TYPE");
            }
            if (TextUtils.isEmpty(str)) {
                str = "text/html; charset=UTF-8";
            }
            return o.dq(str);
        }
        str = null;
        if (TextUtils.isEmpty(str)) {
        }
        return o.dq(str);
    }

    private String dq(int i) {
        if (i == 100) {
            return "Continue";
        }
        if (i == 101) {
            return "Switching Protocols";
        }
        switch (i) {
            case 200:
                return "OK";
            case MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_SHORT_SEEK /* 201 */:
                return "Created";
            case 202:
                return "Accepted";
            case MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CHECK_INFO /* 203 */:
                return "Non-Authoritative Information";
            case MediaPlayer.MEDIA_PLAYER_OPTION_HIJACK_CODE /* 204 */:
                return "No Content";
            case MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_ID /* 205 */:
                return "Reset Content";
            case MediaPlayer.MEDIA_PLAYER_OPTION_DRM_TYPE /* 206 */:
                return "Partial Content";
            default:
                switch (i) {
                    case MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL /* 400 */:
                        return "Bad Request";
                    case 401:
                        return "Unauthorized";
                    case 402:
                        return "Payment Required";
                    case 403:
                        return "Forbidden";
                    case TTAdConstant.SDK_NOT_SUPPORT_LIVE_MATE_CODE /* 404 */:
                        return "Not Found";
                    case TTAdConstant.LANDING_PAGE_TYPE_CODE /* 405 */:
                        return "Method Not Allowed";
                    case TTAdConstant.DOWNLOAD_APP_INFO_CODE /* 406 */:
                        return "Not Acceptable";
                    case TTAdConstant.DOWNLOAD_URL_CODE /* 407 */:
                        return "Proxy Authentication Required";
                    case TTAdConstant.INTERACTION_TYPE_CODE /* 408 */:
                        return "Request Time-out";
                    case TTAdConstant.IMAGE_LIST_CODE /* 409 */:
                        return "Conflict";
                    case TTAdConstant.IMAGE_LIST_SIZE_CODE /* 410 */:
                        return "Gone";
                    case TTAdConstant.IMAGE_CODE /* 411 */:
                        return "Length Required";
                    case TTAdConstant.IMAGE_URL_CODE /* 412 */:
                        return "Precondition Failed";
                    case TTAdConstant.VIDEO_INFO_CODE /* 413 */:
                        return "Request Entity Too Large";
                    case TTAdConstant.VIDEO_URL_CODE /* 414 */:
                        return "Request-URI Too Large";
                    case TTAdConstant.VIDEO_COVER_URL_CODE /* 415 */:
                        return "Unsupported Media Type";
                    case TTAdConstant.LIVE_AD_CODE /* 416 */:
                        return "Requested range not satisfiable";
                    case TTAdConstant.LIVE_FEED_URL_CODE /* 417 */:
                        return "Expectation Failed";
                    default:
                        switch (i) {
                            case 500:
                                return "Internal Server Error";
                            case MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_PROTOCOL_HANDLE /* 501 */:
                                return "Not Implemented";
                            case 502:
                                return "Bad Gateway";
                            case 503:
                                return "Service Unavailable";
                            case 504:
                                return "Gateway Time-out";
                            case 505:
                                return "HTTP Version not supported";
                            default:
                                return "";
                        }
                }
        }
    }

    public static void dq(Context context) {
        try {
            File file = new File(d(context));
            if (System.currentTimeMillis() - file.lastModified() <= 3000 || !file.exists()) {
                return;
            }
            com.bytedance.sdk.openadsdk.ig.dq.dq.d(d(context));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void dq(File file, String str, Context context, long j, long j2) {
        try {
            com.bytedance.sdk.openadsdk.ig.dq.dq.d(str);
            if (file != null && file.exists()) {
                file.delete();
            }
            AtomicInteger atomicInteger = p;
            atomicInteger.get();
            if (atomicInteger.get() > 0) {
                atomicInteger.decrementAndGet();
            }
            if (atomicInteger.get() == 0) {
                com.bytedance.sdk.openadsdk.ig.dq.dq.d(d(context));
            }
            dq(this.ia, this.kk, this.q, this.mn, j, j2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private byte[] dq(byte[] bArr, int i) {
        return com.bytedance.sdk.openadsdk.h.d.dq(bArr, i);
    }

    private String ox(Context context) {
        String str = this.o;
        if (str != null) {
            return str;
        }
        try {
            String str2 = d(context) + File.separator + this.ia;
            this.o = str2;
            return str2;
        } catch (Exception e2) {
            e2.printStackTrace();
            StringBuilder sb = new StringBuilder();
            String str3 = File.separator;
            awf.a(str3, ".lp_cache", str3, sb);
            sb.append(this.ia);
            return sb.toString();
        }
    }

    private void ox(Context context, String str, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse, o oVar, Map<String, Object> map) {
        try {
            if (ox.dq()) {
                String ox = ox(context);
                String uri = webResourceRequest.getUrl().toString();
                String d2 = oVar.d();
                if (TextUtils.equals(d2.toLowerCase(), "javascript")) {
                    d2 = "js";
                }
                File file = new File(ox);
                if (!file.exists()) {
                    file.mkdirs();
                }
                String str2 = s.d(uri) + "." + d2;
                File file2 = new File(ox, str2);
                if (file2.exists()) {
                    file2.delete();
                    file2.createNewFile();
                }
                file2.getAbsolutePath();
                wp.d().nh();
                if (com.bytedance.sdk.openadsdk.ig.dq.dq.dq(webResourceResponse.getData(), ox, str2, wp.d().nh())) {
                    dq(this.iw, str, oVar, str2, uri, webResourceRequest.getRequestHeaders(), map);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            e2.getMessage();
        }
    }

    public void d() {
        dq();
    }

    public WebResourceResponse dq(final Context context, final String str, final WebResourceRequest webResourceRequest) {
        final Pair<WebResourceResponse, o> dq;
        WebResourceResponse webResourceResponse;
        final Pair<WebResourceResponse, WebResourceResponse> dq2;
        if (!ox.dq() || (dq = dq(webResourceRequest)) == null || (webResourceResponse = (WebResourceResponse) dq.first) == null) {
            return null;
        }
        if (!dq((o) dq.second) || (dq2 = dq(webResourceResponse)) == null) {
            return null;
        }
        dq(webResourceRequest, (WebResourceResponse) dq2.second, (o) dq.second, new InterfaceC0201dq() { // from class: com.bytedance.sdk.openadsdk.ig.dq.3
            @Override // com.bytedance.sdk.openadsdk.ig.dq.InterfaceC0201dq
            public void dq(final boolean z, final Map<String, Object> map) {
                dq.this.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ig.dq.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AtomicBoolean atomicBoolean;
                        try {
                            if (!z || (atomicBoolean = dq.this.ox) == null || atomicBoolean.get()) {
                                return;
                            }
                            AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                            dq.this.dq(context, str, webResourceRequest, (WebResourceResponse) dq2.second, (o) dq.second, map);
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    }
                });
            }
        });
        return (WebResourceResponse) dq2.first;
    }

    public WebResourceResponse dq(WebView webView, final WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        AtomicBoolean atomicBoolean;
        if (webView != null && !no.contains(this.ia) && (((atomicBoolean = this.ox) == null || !atomicBoolean.get()) && this.jy.get() <= 0 && ox.dq() && webResourceRequest != null && TextUtils.equals(webResourceRequest.getMethod().toLowerCase(), "get"))) {
            if (wp.d().j() == 1) {
                WebResourceResponse dq = dq(wp.getContext(), this.mn, webResourceRequest);
                if (dq != null) {
                    dq.getResponseHeaders().put("Access-Control-Allow-Origin", "*");
                    return dq;
                }
            } else {
                dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ig.dq.1
                    @Override // java.lang.Runnable
                    public void run() {
                        dq.this.dq(wp.getContext(), dq.this.mn, webResourceRequest);
                    }
                });
            }
        }
        return webResourceResponse;
    }

    public abstract void dq();

    public void dq(Context context, String str, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse, o oVar, Map<String, Object> map) {
        if (dq(oVar)) {
            wp.d().gx();
            if (wp.d().gx() == 1) {
                d(context, str, webResourceRequest, webResourceResponse, oVar, map);
            } else {
                ox(context, str, webResourceRequest, webResourceResponse, oVar, map);
            }
        }
    }

    public abstract void dq(WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse, o oVar, InterfaceC0201dq interfaceC0201dq);

    public void dq(WebView webView, String str) {
        if (str == null || !str.startsWith("http")) {
            return;
        }
        this.jy.incrementAndGet();
    }

    public void dq(final Runnable runnable) {
        this.s.submit(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ig.dq.2
            @Override // java.lang.Runnable
            public void run() {
                synchronized (dq.this.s) {
                    try {
                        runnable.run();
                    } finally {
                    }
                }
            }
        });
    }

    public abstract void dq(String str, String str2);

    public abstract void dq(String str, String str2, long j, String str3, long j2, long j3);

    public abstract void dq(JSONObject jSONObject, String str, o oVar, String str2, String str3, Map<String, String> map, Map<String, Object> map2);

    public abstract boolean dq(o oVar);

    public boolean ox() {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:75:0x01a5 A[Catch: Exception -> 0x0195, LOOP:0: B:75:0x01a5->B:77:0x01ad, LOOP_START, TryCatch #2 {Exception -> 0x0195, blocks: (B:70:0x01a1, B:75:0x01a5, B:77:0x01ad, B:79:0x01b1, B:81:0x01b9), top: B:69:0x01a1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void p() {
        long j;
        ConcurrentLinkedDeque<String> concurrentLinkedDeque;
        byte[] bytes;
        File file;
        this.q = System.currentTimeMillis();
        Context context = wp.getContext();
        String ox = ox(context);
        if (ox()) {
            return;
        }
        if (wp.d().l() == 1 && !com.bytedance.sdk.component.utils.q.p(context)) {
            dq(null, d(context), context, -1L, -1L);
            return;
        }
        if (ox.dq()) {
            Runtime runtime = Runtime.getRuntime();
            long freeMemory = runtime.freeMemory() + (runtime.maxMemory() - runtime.totalMemory());
            File file2 = null;
            try {
                bytes = this.iw.toString().getBytes(StandardCharsets.UTF_8);
                if (wp.d().gx() != 1 && !com.bytedance.sdk.openadsdk.ig.dq.dq.dq(new ByteArrayInputStream(bytes), ox, "index_censorship.json", -2147483648L)) {
                    throw new d(false);
                }
                String d2 = d(context);
                File file3 = new File(d2);
                if (!file3.exists()) {
                    file3.mkdirs();
                }
                String str = d2 + File.separator + this.ia + "-compress.zip";
                wp.d().gx();
                file = new File(str);
            } catch (d e2) {
                e = e2;
            } catch (IOException e3) {
                e = e3;
            }
            try {
                if (file.exists()) {
                    file.delete();
                }
                file.createNewFile();
                String absolutePath = file.getAbsolutePath();
                if (wp.d().gx() == 1) {
                    HashMap<String, byte[]> hashMap = new HashMap<>();
                    hashMap.put("index_censorship.json", bytes);
                    this.ig.put("index_censorship.json", hashMap);
                    if (TextUtils.isEmpty(ox) || !com.bytedance.sdk.openadsdk.ig.dq.d.dq(this.ig, absolutePath)) {
                        throw new d(false);
                    }
                } else if (!d(ox, absolutePath)) {
                    throw new d(false);
                }
                byte[] dq = com.bytedance.sdk.openadsdk.ig.dq.dq.dq(absolutePath);
                long length = (int) new File(absolutePath).length();
                try {
                    long vf = wp.d().vf() * BaseConstants.MB_VALUE;
                    wp.d().vf();
                    if (length > vf) {
                        throw new d(false);
                    }
                    if (length > freeMemory - BaseConstants.MB_VALUE) {
                        throw new d(false);
                    }
                    byte[] dq2 = dq(dq, (int) length);
                    if (dq2 != null && dq2.length <= vf) {
                        if (dq(dq2, wp.d().ob(), file) != 200) {
                            throw new d(false, dq2.length);
                        }
                        throw new d(true, dq2.length);
                    }
                    throw new d(false, true, dq2 == null ? 0L : dq2.length);
                } catch (d e4) {
                    e = e4;
                    j = length;
                    file2 = file;
                    e.printStackTrace();
                    try {
                        if (e.dq) {
                            while (true) {
                                concurrentLinkedDeque = no;
                                if (concurrentLinkedDeque.size() <= 0) {
                                    break;
                                } else {
                                    concurrentLinkedDeque.pollLast();
                                }
                            }
                            if (!TextUtils.isEmpty(this.ia)) {
                                concurrentLinkedDeque.push(this.ia);
                            }
                        }
                    } catch (Exception unused) {
                    }
                    dq(file2, ox, context, j, freeMemory);
                } catch (IOException e5) {
                    e = e5;
                    j = length;
                    file2 = file;
                    e.printStackTrace();
                    dq(file2, ox, context, j, freeMemory);
                }
            } catch (d e6) {
                e = e6;
                file2 = file;
                j = 0;
                e.printStackTrace();
                if (e.dq) {
                }
                dq(file2, ox, context, j, freeMemory);
            } catch (IOException e7) {
                e = e7;
                file2 = file;
                j = 0;
                e.printStackTrace();
                dq(file2, ox, context, j, freeMemory);
            }
        }
    }

    public void s() {
        if (no.contains(this.ia)) {
            dq(null, d(wp.getContext()), wp.getContext(), -1L, -1L);
        } else if (this.f3764d.compareAndSet(false, true)) {
            dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ig.dq.4
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        dq.this.ox.set(true);
                        dq.this.p();
                        dq.this.f3764d.set(false);
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            });
        }
    }
}
