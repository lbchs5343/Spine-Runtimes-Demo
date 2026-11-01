package com.ss.android.socialbase.downloader.kk;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Environment;
import android.os.Looper;
import android.os.Process;
import android.os.StatFs;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.ss.android.socialbase.downloader.depend.c;
import com.ss.android.socialbase.downloader.depend.wp;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.impls.ig;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import g.awf;
import g.gts;
import g.tn;
import j$.util.Objects;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.InterruptedIOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.net.ConnectException;
import java.net.HttpRetryException;
import java.net.MalformedURLException;
import java.net.NoRouteToHostException;
import java.net.PortUnreachableException;
import java.net.ProtocolException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class iw {
    private static final String dq = "iw";
    private static ConnectivityManager kk;
    private static Boolean no;
    private static Boolean o;

    /* renamed from: d, reason: collision with root package name */
    private static final Pattern f9421d = Pattern.compile(".*\\d+ *- *(\\d+) */ *\\d+");
    private static String ox = null;
    private static volatile SparseArray<Boolean> p = new SparseArray<>();
    private static volatile SparseArray<List<c>> s = new SparseArray<>();
    private static final char[] iw = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private static Pattern mn = null;
    private static Pattern ia = null;

    public static int d(String str, String str2, String str3) {
        return com.ss.android.dq.ox.dq(str3, new File(str, str2));
    }

    public static long d(com.ss.android.socialbase.downloader.network.mn mnVar) {
        if (mnVar == null) {
            return -1L;
        }
        String d2 = d(mnVar, "Content-Range");
        if (TextUtils.isEmpty(d2)) {
            return -1L;
        }
        try {
            Matcher matcher = Pattern.compile("bytes (\\d+)-(\\d+)/\\d+").matcher(d2);
            if (matcher.find()) {
                return (Long.parseLong(matcher.group(2)) - Long.parseLong(matcher.group(1))) + 1;
            }
        } catch (Exception e2) {
            com.ss.android.socialbase.downloader.ox.dq.p(dq, "parse content-length from content-range failed " + e2);
        }
        return -1L;
    }

    public static long d(String str) {
        if (str == null) {
            return -1L;
        }
        String[] split = str.split("/");
        if (split.length >= 2) {
            try {
                return Long.parseLong(split[1]);
            } catch (NumberFormatException unused) {
                com.ss.android.socialbase.downloader.ox.dq.p(dq, "parse instance length failed with ".concat(str));
            }
        }
        return -1L;
    }

    public static long d(List<com.ss.android.socialbase.downloader.model.d> list) {
        Iterator<com.ss.android.socialbase.downloader.model.d> it = list.iterator();
        long j = 0;
        while (it.hasNext()) {
            j += it.next().jy();
        }
        return j;
    }

    public static String d(int i) {
        String b2 = awf.b(i, "ttmd5 check code = ", ", ");
        if (i == 99) {
            return awf.c(b2, "unknown error");
        }
        switch (i) {
            case 0:
                return awf.c(b2, "md5 match");
            case 1:
                return awf.c(b2, "md5 not match");
            case 2:
                return awf.c(b2, "md5 empty");
            case 3:
                return awf.c(b2, "ttmd5 version not support");
            case 4:
                return awf.c(b2, "ttmd5 tag parser error");
            case 5:
                return awf.c(b2, "file not exist");
            case 6:
                return awf.c(b2, "get file md5 error");
            default:
                return b2;
        }
    }

    public static String d(com.ss.android.socialbase.downloader.network.mn mnVar, String str) {
        if (mnVar == null || TextUtils.isEmpty(str)) {
            return null;
        }
        String dq2 = mnVar.dq(str);
        if (!com.ss.android.socialbase.downloader.mn.dq.ox().d("fix_get_http_resp_head_ignore_case", true)) {
            return dq2;
        }
        if (TextUtils.isEmpty(dq2)) {
            dq2 = mnVar.dq(str.toLowerCase());
        }
        return TextUtils.isEmpty(dq2) ? mnVar.dq(str.toUpperCase()) : dq2;
    }

    public static String d(String str, String str2) {
        if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            return null;
        }
        return !TextUtils.isEmpty(str2) ? str2 : str;
    }

    public static String d(Throwable th, String str) {
        if (str == null) {
            return o(th);
        }
        StringBuilder l = tn.l(str, "-");
        l.append(o(th));
        return l.toString();
    }

    public static void d(DownloadInfo downloadInfo) {
        com.ss.android.socialbase.downloader.mn.dq dq2;
        JSONObject p2;
        if (downloadInfo == null || (p2 = (dq2 = com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId())).p("download_dir")) == null) {
            return;
        }
        String optString = p2.optString("ins_desc");
        if (!TextUtils.isEmpty(optString)) {
            ox(downloadInfo.getSavePath(), optString);
        }
        String title = downloadInfo.getTitle();
        if (TextUtils.isEmpty(title)) {
            title = downloadInfo.getName();
        }
        String dq3 = dq(title, dq2);
        String savePath = downloadInfo.getSavePath();
        if (TextUtils.isEmpty(dq3) || TextUtils.isEmpty(savePath)) {
            return;
        }
        File file = new File(dq3);
        for (File file2 = new File(savePath); file != null && file2 != null && file2.isDirectory() && TextUtils.equals(file.getName(), file2.getName()); file2 = file2.getParentFile()) {
            no(file2.getPath());
            file = file.getParentFile();
        }
    }

    @TargetApi(19)
    private static void d(File file, File file2, boolean z) throws IOException {
        if (file2.exists() && file2.isDirectory()) {
            throw new IOException("Destination '" + file2 + "' exists but is a directory");
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            FileChannel channel = fileInputStream.getChannel();
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                try {
                    FileChannel channel2 = fileOutputStream.getChannel();
                    try {
                        long size = channel.size();
                        long j = 0;
                        while (j < size) {
                            long j2 = size - j;
                            if (j2 > 31457280) {
                                j2 = 31457280;
                            }
                            long transferFrom = channel2.transferFrom(channel, j, j2);
                            if (transferFrom == 0) {
                                break;
                            } else {
                                j += transferFrom;
                            }
                        }
                        if (channel2 != null) {
                            channel2.close();
                        }
                        fileOutputStream.close();
                        channel.close();
                        fileInputStream.close();
                        long length = file.length();
                        long length2 = file2.length();
                        if (length == length2) {
                            if (z) {
                                file2.setLastModified(file.lastModified());
                                return;
                            }
                            return;
                        }
                        throw new IOException("Failed to copy full contents from '" + file + "' to '" + file2 + "' Expected length: " + length + " Actual: " + length2);
                    } finally {
                    }
                } finally {
                }
            } finally {
            }
        } finally {
        }
    }

    public static void d(List<com.ss.android.socialbase.downloader.model.ox> list, DownloadInfo downloadInfo) {
        long ttnetProtectTimeout = downloadInfo.getTtnetProtectTimeout();
        if (ttnetProtectTimeout > 300) {
            list.add(new com.ss.android.socialbase.downloader.model.ox("extra_ttnet_protect_timeout", String.valueOf(ttnetProtectTimeout)));
        }
    }

    public static boolean d() {
        return !ox() && com.ss.android.socialbase.downloader.downloader.ox.ox() && ig.dq(true).mn();
    }

    public static boolean d(long j) {
        return j == -1;
    }

    public static boolean d(Context context) {
        NetworkInfo activeNetworkInfo;
        try {
            ConnectivityManager dq2 = dq(context);
            if (dq2 != null && (activeNetworkInfo = dq2.getActiveNetworkInfo()) != null && activeNetworkInfo.isAvailable()) {
                if (1 == activeNetworkInfo.getType()) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static boolean d(BaseException baseException) {
        if (!(baseException instanceof com.ss.android.socialbase.downloader.exception.d)) {
            return false;
        }
        com.ss.android.socialbase.downloader.exception.d dVar = (com.ss.android.socialbase.downloader.exception.d) baseException;
        return dVar.dq() == 412 || dVar.dq() == 416;
    }

    public static boolean d(BaseException baseException, DownloadInfo downloadInfo) {
        return downloadInfo != null && downloadInfo.isOnlyWifi() && ox(com.ss.android.socialbase.downloader.downloader.ox.ob());
    }

    public static boolean d(File file, File file2) throws BaseException {
        String str = dq;
        Log.e(str, "moveFile1: src:" + file.getPath() + " dest:" + file2.getPath());
        boolean renameTo = file.renameTo(file2);
        if (!renameTo) {
            renameTo = dq(file, file2);
            try {
                Log.e(str, "moveFile2: src:" + file.getPath() + " dest:" + file2.getPath());
                file.delete();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return renameTo;
    }

    public static boolean d(Throwable th) {
        if (th == null) {
            return false;
        }
        String o2 = o(th);
        if (!(th instanceof com.ss.android.socialbase.downloader.exception.d) || (((com.ss.android.socialbase.downloader.exception.d) th).dq() != 403 && (TextUtils.isEmpty(o2) || !o2.contains("403")))) {
            return !TextUtils.isEmpty(o2) && o2.contains("Forbidden");
        }
        return true;
    }

    public static double dq(long j) {
        return j / 1048576.0d;
    }

    public static int dq(File file, String str) {
        return com.ss.android.dq.ox.dq(str, file);
    }

    public static int dq(Object obj, int i) {
        try {
            return ((Integer) obj).intValue();
        } catch (ClassCastException unused) {
            return i;
        }
    }

    public static long dq(com.ss.android.socialbase.downloader.network.mn mnVar) {
        if (mnVar == null) {
            return -1L;
        }
        String d2 = d(mnVar, "Content-Length");
        if (TextUtils.isEmpty(d2) && dq.dq(1)) {
            return d(mnVar);
        }
        try {
            return Long.parseLong(d2);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    public static ConnectivityManager dq(Context context) {
        ConnectivityManager connectivityManager = kk;
        if (connectivityManager != null) {
            return connectivityManager;
        }
        ConnectivityManager connectivityManager2 = (ConnectivityManager) context.getSystemService("connectivity");
        kk = connectivityManager2;
        return connectivityManager2;
    }

    public static com.ss.android.socialbase.downloader.model.s dq(DownloadInfo downloadInfo, String str, String str2, int i) throws BaseException {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            throw new BaseException(1021, new IOException("path must be not empty"));
        }
        File file = new File(str, str2);
        boolean z = false;
        if (file.exists() && file.isDirectory()) {
            throw new BaseException(1035, new IOException(String.format("path is :%s, path is directory:%B:", str, Boolean.valueOf(file.isDirectory()))));
        }
        if (!file.exists()) {
            try {
                File file2 = new File(str);
                if (!file2.exists() || !file2.isDirectory()) {
                    if (file2.exists()) {
                        file2.delete();
                        if (file2.mkdirs() || file2.exists()) {
                            throw new BaseException(1031, "download savePath is not directory:" + str);
                        }
                        throw new BaseException(1031, "download savePath is not directory:path=" + str);
                    }
                    if (!file2.mkdirs() && !file2.exists()) {
                        if (com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo).dq("opt_mkdir_failed", 0) != 1) {
                            throw new BaseException(AVMDLDataLoader.KeyIsPreloadStragetyWhenPlay, "download savePath directory can not created:" + str);
                        }
                        int i2 = 0;
                        while (!z) {
                            int i3 = i2 + 1;
                            if (i2 >= 3) {
                                break;
                            }
                            try {
                                Thread.sleep(10L);
                                z = file2.mkdirs();
                                i2 = i3;
                            } catch (InterruptedException unused) {
                            }
                        }
                        if (!z) {
                            if (p(downloadInfo.getSavePath()) < 16384) {
                                throw new BaseException(PluginConstants.ERROR_PLUGIN_SIGN_VERIFY, "download savePath directory can not created:" + str);
                            }
                            throw new BaseException(AVMDLDataLoader.KeyIsPreloadStragetyWhenPlay, "download savePath directory can not created:" + str);
                        }
                    }
                }
                file.createNewFile();
            } catch (IOException e2) {
                throw new BaseException(1036, e2);
            }
        }
        return new com.ss.android.socialbase.downloader.model.s(file, i);
    }

    public static String dq(com.ss.android.socialbase.downloader.network.mn mnVar, String str) {
        String o2 = o(mnVar.dq("Content-Disposition"));
        return TextUtils.isEmpty(o2) ? s(str) : o2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0023, code lost:
    
        if (r1 != false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x002f, code lost:
    
        if (com.ss.android.socialbase.downloader.mn.dq.ox().d("fix_save_external_dir") > 0) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0031, code lost:
    
        r4 = com.bytedance.sdk.openadsdk.api.plugin.d.dq(r0, android.os.Environment.DIRECTORY_DOWNLOADS);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003b, code lost:
    
        if (dq(r4) == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0041, code lost:
    
        return r4.getAbsolutePath();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0025, code lost:
    
        if (r4 > 29) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String dq(File file, boolean z) {
        boolean isExternalStorageLegacy;
        Context ob = com.ss.android.socialbase.downloader.downloader.ox.ob();
        if (dq(file)) {
            return file.getAbsolutePath();
        }
        int i = ob.getApplicationInfo().targetSdkVersion;
        if (Build.VERSION.SDK_INT >= 29) {
            if (i == 29) {
                isExternalStorageLegacy = Environment.isExternalStorageLegacy();
            }
        }
        if (z) {
            File mn2 = mn();
            if (dq(mn2)) {
                return mn2.getAbsolutePath();
            }
        }
        if (com.ss.android.socialbase.downloader.mn.dq.ox().d("fix_save_external_dir") <= 0) {
            File dq2 = com.bytedance.sdk.openadsdk.api.plugin.d.dq(ob, Environment.DIRECTORY_DOWNLOADS);
            if (dq(dq2)) {
                return dq2.getAbsolutePath();
            }
        }
        return com.bytedance.sdk.openadsdk.api.plugin.d.dq(ob).getAbsolutePath();
    }

    public static String dq(Object obj, String str) {
        try {
            return (String) obj;
        } catch (ClassCastException unused) {
            return str;
        }
    }

    public static String dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            try {
                bArr[i] = (byte) (Integer.parseInt(str.substring(i2, i2 + 2), 16) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        try {
            return new String(bArr, "utf-8");
        } catch (Exception e3) {
            e3.printStackTrace();
            return str;
        }
    }

    public static String dq(String str, int i) {
        return i == 0 ? "" : (TextUtils.isEmpty(str) || str.length() <= i) ? str : str.substring(0, i);
    }

    public static String dq(String str, com.ss.android.socialbase.downloader.mn.dq dqVar) {
        JSONObject p2;
        if (dqVar == null || (p2 = dqVar.p("download_dir")) == null) {
            return "";
        }
        String optString = p2.optString("dir_name");
        if (!TextUtils.isEmpty(optString) && optString.startsWith("/")) {
            optString = optString.substring(1);
        }
        if (TextUtils.isEmpty(optString)) {
            return optString;
        }
        if (optString.contains("%s")) {
            try {
                optString = String.format(optString, str);
            } catch (Throwable unused) {
            }
        } else {
            optString = awf.c(optString, str);
        }
        return optString.length() > 255 ? optString.substring(optString.length() - MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) : optString;
    }

    public static String dq(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        return awf.i(str, File.separator, str2);
    }

    public static String dq(String str, String str2, String str3) {
        if ((TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) || TextUtils.isEmpty(str3)) {
            return null;
        }
        String dq2 = !TextUtils.isEmpty(str2) ? dq(str2, str3) : dq(str, str3);
        if (TextUtils.isEmpty(dq2)) {
            return null;
        }
        return awf.c(dq2, ".tp");
    }

    public static String dq(byte[] bArr) {
        if (bArr != null) {
            return dq(bArr, 0, bArr.length);
        }
        throw new NullPointerException("bytes is null");
    }

    public static String dq(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new NullPointerException("bytes is null");
        }
        if (i < 0 || i + i2 > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        int i3 = i2 * 2;
        char[] cArr = new char[i3];
        int i4 = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            byte b2 = bArr[i5 + i];
            int i6 = i4 + 1;
            char[] cArr2 = iw;
            cArr[i4] = cArr2[(b2 & 255) >> 4];
            i4 += 2;
            cArr[i6] = cArr2[b2 & 15];
        }
        return new String(cArr, 0, i3);
    }

    public static <K> HashMap<Integer, K> dq(SparseArray<K> sparseArray) {
        if (sparseArray == null) {
            return null;
        }
        HashMap<Integer, K> hashMap = new HashMap<>();
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            int keyAt = sparseArray.keyAt(i);
            hashMap.put(Integer.valueOf(keyAt), sparseArray.valueAt(i));
        }
        return hashMap;
    }

    public static List<com.ss.android.socialbase.downloader.model.d> dq(List<com.ss.android.socialbase.downloader.model.d> list) {
        SparseArray sparseArray = new SparseArray();
        SparseArray sparseArray2 = new SparseArray();
        for (com.ss.android.socialbase.downloader.model.d dVar : list) {
            if (dVar != null) {
                if (dVar.p()) {
                    sparseArray.put(dVar.gh(), dVar);
                    List<com.ss.android.socialbase.downloader.model.d> list2 = (List) sparseArray2.get(dVar.gh());
                    if (list2 != null) {
                        Iterator<com.ss.android.socialbase.downloader.model.d> it = list2.iterator();
                        while (it.hasNext()) {
                            it.next().dq(dVar);
                        }
                        dVar.dq(list2);
                    }
                } else {
                    com.ss.android.socialbase.downloader.model.d dVar2 = (com.ss.android.socialbase.downloader.model.d) sparseArray.get(dVar.d());
                    if (dVar2 != null) {
                        List<com.ss.android.socialbase.downloader.model.d> mn2 = dVar2.mn();
                        if (mn2 == null) {
                            mn2 = new ArrayList<>();
                            dVar2.dq(mn2);
                        }
                        dVar.dq(dVar2);
                        mn2.add(dVar);
                    } else {
                        List list3 = (List) sparseArray2.get(dVar.d());
                        if (list3 == null) {
                            list3 = new ArrayList();
                            sparseArray2.put(dVar.d(), list3);
                        }
                        list3.add(dVar);
                    }
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < sparseArray.size(); i++) {
            arrayList.add(sparseArray.get(sparseArray.keyAt(i)));
        }
        return arrayList.isEmpty() ? list : arrayList;
    }

    public static List<com.ss.android.socialbase.downloader.model.ox> dq(List<com.ss.android.socialbase.downloader.model.ox> list, String str, long j, long j2) {
        ArrayList arrayList = new ArrayList();
        if (list != null && list.size() > 0) {
            for (com.ss.android.socialbase.downloader.model.ox oxVar : list) {
                if (oxVar != null) {
                    arrayList.add(oxVar);
                }
            }
        }
        if (!TextUtils.isEmpty(str)) {
            arrayList.add(new com.ss.android.socialbase.downloader.model.ox("If-Match", str));
        }
        arrayList.add(new com.ss.android.socialbase.downloader.model.ox("Accept-Encoding", "identity"));
        String ad = j2 <= 0 ? tn.ad("bytes=", String.valueOf(j), "-") : awf.t("bytes=", String.valueOf(j), "-", String.valueOf(j2));
        arrayList.add(new com.ss.android.socialbase.downloader.model.ox("Range", ad));
        String str2 = dq;
        StringBuilder l = awf.l(j, " range CurrentOffset:", " EndOffset:");
        l.append(j2);
        l.append(", range = ");
        l.append(ad);
        com.ss.android.socialbase.downloader.ox.dq.d(str2, l.toString());
        return arrayList;
    }

    public static List<com.ss.android.socialbase.downloader.model.ox> dq(List<com.ss.android.socialbase.downloader.model.ox> list, String str, com.ss.android.socialbase.downloader.model.d dVar) {
        return dq(list, str, dVar.mp(), dVar.f());
    }

    private static void dq(int i, boolean z, BaseException baseException) {
        synchronized (p) {
            try {
                List<c> list = s.get(i);
                if (list != null) {
                    for (c cVar : list) {
                        if (cVar != null) {
                            if (z) {
                                cVar.dq();
                            } else {
                                cVar.dq(baseException);
                            }
                        }
                    }
                }
                com.ss.android.socialbase.downloader.ox.dq.d(dq, "handleTempSaveCallback id:" + i);
                p.remove(i);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static <K> void dq(SparseArray<K> sparseArray, Map<Integer, K> map) {
        if (map == null || sparseArray == null) {
            return;
        }
        for (Integer num : map.keySet()) {
            if (num != null) {
                sparseArray.put(num.intValue(), map.get(num));
            }
        }
    }

    public static void dq(DownloadInfo downloadInfo) {
        dq(downloadInfo, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x01d8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x02b2  */
    /* JADX WARN: Removed duplicated region for block: B:95:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void dq(DownloadInfo downloadInfo, wp wpVar, c cVar) {
        boolean z;
        boolean z2;
        String str = dq;
        com.ss.android.socialbase.downloader.ox.dq.d(str, "saveFileAsTargetName targetName is " + downloadInfo.getTargetFilePath());
        try {
        } catch (Throwable th) {
            com.ss.android.socialbase.downloader.ox.dq.d(dq, "saveFileAsTargetName throwable " + th.getMessage());
            if (cVar == null) {
            }
        }
        synchronized (p) {
            try {
                Boolean bool = p.get(downloadInfo.getId());
                Boolean bool2 = Boolean.TRUE;
                if (bool == bool2) {
                    com.ss.android.socialbase.downloader.ox.dq.d(str, "has another same task is saving temp file");
                    if (cVar != null) {
                        List<c> list = s.get(downloadInfo.getId());
                        if (list == null) {
                            list = new ArrayList<>();
                            s.put(downloadInfo.getId(), list);
                        }
                        list.add(cVar);
                    }
                    return;
                }
                com.ss.android.socialbase.downloader.ox.dq.d(str, "saveTempFileStatusMap put id:" + downloadInfo.getId());
                p.put(downloadInfo.getId(), bool2);
                File file = new File(downloadInfo.getTempPath(), downloadInfo.getTempName());
                File file2 = new File(downloadInfo.getSavePath(), downloadInfo.getName());
                boolean ia2 = ia(downloadInfo.getSavePath());
                if (file2.exists()) {
                    com.ss.android.socialbase.downloader.ox.dq.d(str, "targetFile exist");
                    int dq2 = dq(file2, downloadInfo.getMd5());
                    if (!dq(dq2)) {
                        if (file.exists()) {
                            z = true;
                        } else {
                            BaseException baseException = new BaseException(1005, "Can't save the temp downloaded file(" + downloadInfo.getTempPath() + "/" + downloadInfo.getTempName() + ") to the target file(" + downloadInfo.getSavePath() + "/" + downloadInfo.getName() + ") because tempFile is not exist and target file is exist but md5 verify invalid :" + d(dq2));
                            if (cVar != null) {
                                cVar.dq(baseException);
                            }
                            dq(downloadInfo.getId(), false, baseException);
                            z = false;
                        }
                        if (ia2 && !file2.delete()) {
                            if (z) {
                                BaseException baseException2 = new BaseException(1037, "delete targetPath file existed with md5 check invalid status:" + d(dq2));
                                if (cVar != null) {
                                    cVar.dq(baseException2);
                                }
                                dq(downloadInfo.getId(), false, baseException2);
                            } else if (wpVar != null) {
                                com.ss.android.socialbase.downloader.p.dq.dq(wpVar, downloadInfo, new BaseException(1038, "tempFile is not exist and target file is exist but md5 verify invalid, delete target file failed"), downloadInfo.getStatus());
                            }
                        }
                        if (z) {
                            return;
                        }
                        try {
                            int dq3 = com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId()).dq("download_finish_check_ttmd5", 2);
                            if (dq3 > 0) {
                                int dq4 = dq(file, downloadInfo.getMd5());
                                downloadInfo.setTTMd5CheckStatus(dq4);
                                if (dq3 >= 2 && !dq(dq4)) {
                                    BaseException baseException3 = new BaseException(1034, d(dq4));
                                    if (cVar != null) {
                                        cVar.dq(baseException3);
                                    }
                                    dq(downloadInfo.getId(), false, baseException3);
                                    dq(downloadInfo, ia2);
                                    return;
                                }
                            }
                            z2 = !d(file, file2);
                            e = null;
                        } catch (BaseException e2) {
                            e = e2;
                            z2 = com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId()).dq("fix_file_rename_failed");
                        }
                        if (!z2) {
                            if (cVar != null) {
                                cVar.dq();
                            }
                            dq(downloadInfo.getId(), true, (BaseException) null);
                            return;
                        }
                        if (e == null) {
                            e = new BaseException(1038, "Can't save the temp downloaded file(" + downloadInfo.getTempPath() + "/" + downloadInfo.getTempName() + ") to the target file(" + downloadInfo.getSavePath() + "/" + downloadInfo.getName() + ")");
                        }
                        if (cVar != null) {
                            cVar.dq(e);
                        }
                        dq(downloadInfo.getId(), false, e);
                        return;
                    }
                    com.ss.android.socialbase.downloader.ox.dq.d(str, "tempFile not exist , targetFile exists and md5 check valid");
                    downloadInfo.setTTMd5CheckStatus(dq2);
                    if (cVar != null) {
                        cVar.dq();
                    }
                    dq(downloadInfo.getId(), true, (BaseException) null);
                    z = false;
                    if (z) {
                    }
                } else if (file.exists()) {
                    z = true;
                    if (z) {
                    }
                } else {
                    BaseException baseException4 = new BaseException(1005, "Can't save the temp downloaded file(" + downloadInfo.getTempPath() + "/" + downloadInfo.getTempName() + ") to the target file(" + downloadInfo.getSavePath() + "/" + downloadInfo.getName() + ") because tempFile is not exist");
                    if (cVar != null) {
                        cVar.dq(baseException4);
                    }
                    dq(downloadInfo.getId(), false, baseException4);
                    z = false;
                    if (z) {
                    }
                }
                com.ss.android.socialbase.downloader.ox.dq.d(dq, "saveFileAsTargetName throwable " + th.getMessage());
                if (cVar == null) {
                    cVar.dq(new BaseException(1038, d(th, "saveFileAsTargetName")));
                }
            } finally {
            }
        }
    }

    public static void dq(DownloadInfo downloadInfo, String str) throws BaseException {
        if (downloadInfo == null || TextUtils.isEmpty(str) || str.equals(downloadInfo.getName())) {
            return;
        }
        File file = new File(downloadInfo.getSavePath(), str);
        File file2 = new File(downloadInfo.getSavePath(), downloadInfo.getName());
        Log.e(dq, "copyFileFromExistFileWithSameName: existFile:" + file.getPath() + " targetFile:" + file2.getPath());
        if (file2.exists() && !file2.canWrite()) {
            throw new BaseException(1001, "targetPath file exists but read-only");
        }
        if (dq(file, file2)) {
            return;
        }
        throw new BaseException(1001, awf.r(tn.o("Can't copy the exist file(", downloadInfo.getSavePath(), "/", str, ") to the target file("), downloadInfo.getSavePath(), "/", downloadInfo.getName(), ")"));
    }

    public static void dq(DownloadInfo downloadInfo, boolean z) {
        if (downloadInfo == null) {
            return;
        }
        if (z) {
            try {
                ox(downloadInfo.getSavePath(), downloadInfo.getName());
            } catch (Throwable th) {
                th.printStackTrace();
                return;
            }
        }
        ox(downloadInfo.getTempPath(), downloadInfo.getTempName());
        if (downloadInfo.isSavePathRedirected()) {
            d(downloadInfo);
        }
        if (z) {
            String s2 = s(downloadInfo.getUrl());
            if (TextUtils.isEmpty(s2) || TextUtils.isEmpty(downloadInfo.getSavePath()) || !downloadInfo.getSavePath().contains(s2)) {
                return;
            }
            no(downloadInfo.getSavePath());
        }
    }

    public static void dq(IOException iOException, String str) throws BaseException {
        if (str == null) {
            str = "";
        }
        String d2 = d(iOException, str);
        if (iOException instanceof ConnectException) {
            throw new BaseException(1041, d2);
        }
        if (iOException instanceof UnknownHostException) {
            throw new BaseException(1055, d2);
        }
        if (iOException instanceof NoRouteToHostException) {
            throw new BaseException(1056, d2);
        }
        if (iOException instanceof UnknownServiceException) {
            throw new BaseException(1057, d2);
        }
        if (iOException instanceof PortUnreachableException) {
            throw new BaseException(1058, d2);
        }
        if (iOException instanceof SocketTimeoutException) {
            throw new BaseException(1048, d2);
        }
        if (iOException instanceof SocketException) {
            throw new BaseException(1059, d2);
        }
        if (iOException instanceof HttpRetryException) {
            throw new BaseException(1060, d2);
        }
        if (iOException instanceof ProtocolException) {
            throw new BaseException(1061, d2);
        }
        if (iOException instanceof MalformedURLException) {
            throw new BaseException(1062, d2);
        }
        if (iOException instanceof FileNotFoundException) {
            throw new BaseException(1063, d2);
        }
        if (iOException instanceof InterruptedIOException) {
            throw new BaseException(1064, d2);
        }
        if (iOException instanceof UnsupportedEncodingException) {
            throw new BaseException(1065, d2);
        }
        if (iOException instanceof EOFException) {
            throw new BaseException(1066, d2);
        }
        if (iOException instanceof gts) {
            throw new BaseException(1067, d2);
        }
        if (iOException instanceof SSLException) {
            throw new BaseException(AVMDLDataLoader.KeyIsGetCostLog, d2);
        }
        if (!ia(iOException)) {
            throw new BaseException(1023, d2);
        }
        throw new BaseException(PluginConstants.ERROR_PLUGIN_SIGN_VERIFY, d2);
    }

    public static void dq(Throwable th, String str) throws BaseException {
        String str2 = !TextUtils.isEmpty(str) ? str : "";
        if (th instanceof BaseException) {
            BaseException baseException = (BaseException) th;
            StringBuilder l = tn.l(str2, "-");
            l.append(baseException.getErrorMessage());
            baseException.setErrorMsg(l.toString());
            throw baseException;
        }
        if (th instanceof SSLHandshakeException) {
            throw new BaseException(AVMDLDataLoader.KeyIsGetCostLog, d(th, str2));
        }
        if (dq(th)) {
            throw new BaseException(1048, d(th, str2));
        }
        if (s(th)) {
            throw new com.ss.android.socialbase.downloader.exception.d(1004, TTAdConstant.IMAGE_URL_CODE, d(th, str2));
        }
        if (iw(th)) {
            throw new com.ss.android.socialbase.downloader.exception.d(1004, TTAdConstant.LIVE_AD_CODE, d(th, str2));
        }
        if (d(th)) {
            throw new BaseException(1047, d(th, str2));
        }
        if (ox(th)) {
            throw new BaseException(1049, d(th, str2));
        }
        if (p(th)) {
            throw new BaseException(1041, d(th, str2));
        }
        if (!(th instanceof IOException)) {
            throw new BaseException(1000, d(th, str2));
        }
        ox(th, str);
        dq((IOException) th, str);
    }

    public static void dq(List<com.ss.android.socialbase.downloader.model.ox> list, DownloadInfo downloadInfo) {
        long throttleNetSpeed = downloadInfo.getThrottleNetSpeed();
        if (throttleNetSpeed > 0) {
            list.add(new com.ss.android.socialbase.downloader.model.ox("extra_throttle_net_speed", String.valueOf(throttleNetSpeed)));
        }
    }

    public static void dq(Cursor... cursorArr) {
        if (cursorArr == null) {
            return;
        }
        for (Cursor cursor : cursorArr) {
            if (cursor != null) {
                try {
                    cursor.close();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
    }

    public static void dq(Closeable... closeableArr) {
        if (closeableArr == null) {
            return;
        }
        for (Closeable closeable : closeableArr) {
            if (closeable != null) {
                try {
                    closeable.close();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
    }

    public static boolean dq() {
        Boolean bool = o;
        if (bool != null) {
            return bool.booleanValue();
        }
        String p2 = p(com.ss.android.socialbase.downloader.downloader.ox.ob());
        boolean z = (p2 == null || !p2.contains(":")) && p2 != null && p2.equals(com.ss.android.socialbase.downloader.downloader.ox.ob().getPackageName());
        o = Boolean.valueOf(z);
        return z;
    }

    public static boolean dq(int i) {
        return i == 0 || i == 2;
    }

    public static boolean dq(int i, String str) {
        if (dq.dq(16777216)) {
            return i == 206 || i == 1;
        }
        if (i >= 400) {
            return false;
        }
        return i == 206 || i == 1 || "bytes".equals(str);
    }

    public static boolean dq(int i, String str, String str2) {
        return i == -3 && !p(str, str2);
    }

    public static boolean dq(Context context, String str) {
        return (context == null || TextUtils.isEmpty(str) || context.checkCallingOrSelfPermission(str) != 0) ? false : true;
    }

    public static boolean dq(BaseException baseException) {
        return baseException != null && baseException.getErrorCode() == 1051;
    }

    public static boolean dq(BaseException baseException, DownloadInfo downloadInfo) {
        if (baseException == null) {
            return false;
        }
        int errorCode = baseException.getErrorCode();
        if (errorCode == 1000 || errorCode == 1032 || errorCode == 1033 || errorCode == 1034 || errorCode == 1008 || errorCode == 1026 || errorCode == 1027 || errorCode == 1044 || errorCode == 1020) {
            return true;
        }
        return (errorCode == 1049 || errorCode == 1055 || errorCode == 1006 || downloadInfo == null || downloadInfo.getCurBytes() >= 8388608) ? false : true;
    }

    public static boolean dq(DownloadInfo downloadInfo, boolean z, String str) {
        if (!z && !TextUtils.isEmpty(downloadInfo.getSavePath()) && !TextUtils.isEmpty(downloadInfo.getName())) {
            try {
                if (new File(downloadInfo.getSavePath(), downloadInfo.getName()).exists()) {
                    if (ox(downloadInfo.getSavePath(), downloadInfo.getName(), str)) {
                        return true;
                    }
                }
            } catch (OutOfMemoryError e2) {
                e2.printStackTrace();
            }
        }
        return false;
    }

    public static boolean dq(File file) {
        if (file == null) {
            return false;
        }
        try {
            if (file.exists() || file.mkdirs()) {
                return file.isDirectory();
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean dq(File file, File file2) throws BaseException {
        return dq(file, file2, true);
    }

    public static boolean dq(File file, File file2, boolean z) throws BaseException {
        if (file != null && file2 != null) {
            try {
                if (file.exists() && !file.isDirectory() && !file.getCanonicalPath().equals(file2.getCanonicalPath())) {
                    File parentFile = file2.getParentFile();
                    if (parentFile != null && !parentFile.mkdirs() && !parentFile.isDirectory()) {
                        throw new BaseException(1053, "Destination '" + parentFile + "' directory cannot be created");
                    }
                    Log.e(dq, "copyFile: srcFile:" + file.getPath() + " destFile:" + file2.getPath());
                    if (file2.exists() && !file2.canWrite()) {
                        throw new IOException("Destination '" + file2 + "' exists but is read-only");
                    }
                    d(file, file2, z);
                    return true;
                }
            } catch (BaseException e2) {
                throw e2;
            } catch (Throwable th) {
                dq(th, "CopyFile");
                return false;
            }
        }
        return false;
    }

    public static boolean dq(Object obj, boolean z) {
        try {
            return ((Boolean) obj).booleanValue();
        } catch (ClassCastException unused) {
            return z;
        }
    }

    public static boolean dq(Throwable th) {
        if (th == null) {
            return false;
        }
        String o2 = o(th);
        if (th instanceof SocketTimeoutException) {
            return true;
        }
        return !TextUtils.isEmpty(o2) && (o2.contains("time out") || o2.contains("Time-out"));
    }

    public static boolean dq(List<com.ss.android.socialbase.downloader.model.ox> list, List<com.ss.android.socialbase.downloader.model.ox> list2) {
        if (list == list2) {
            return true;
        }
        if (list == null || list2 == null || list.size() != list2.size()) {
            return false;
        }
        return new HashSet(list).equals(new HashSet(list2));
    }

    public static boolean ia() {
        Context ob = com.ss.android.socialbase.downloader.downloader.ox.ob();
        return (ob == null || d(ob) || !ox(ob)) ? false : true;
    }

    public static boolean ia(String str) {
        Context ob;
        if (com.ss.android.socialbase.downloader.mn.dq.ox().d("save_path_security") > 0 && (ob = com.ss.android.socialbase.downloader.downloader.ox.ob()) != null && !TextUtils.isEmpty(str) && !str.startsWith("/data")) {
            if (!str.contains("Android/data/" + ob.getPackageName())) {
                return false;
            }
        }
        return true;
    }

    public static boolean ia(Throwable th) {
        if (th == null) {
            return false;
        }
        if (th instanceof BaseException) {
            BaseException baseException = (BaseException) th;
            int errorCode = baseException.getErrorCode();
            if (errorCode == 1006) {
                return true;
            }
            if (errorCode == 1023 || errorCode == 1039 || errorCode == 1040 || errorCode == 1054 || errorCode == 1064) {
                String message = baseException.getMessage();
                return !TextUtils.isEmpty(message) && message.contains("ENOSPC");
            }
        } else if (th instanceof IOException) {
            String o2 = o(th);
            if (!TextUtils.isEmpty(o2) && o2.contains("ENOSPC")) {
                return true;
            }
        }
        return false;
    }

    public static long iw(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return 0L;
        }
        List<com.ss.android.socialbase.downloader.model.d> ox2 = com.ss.android.socialbase.downloader.downloader.ox.e().ox(downloadInfo.getId());
        int chunkCount = downloadInfo.getChunkCount();
        boolean z = chunkCount > 1;
        if (!downloadInfo.isBreakpointAvailable()) {
            return 0L;
        }
        if (!z) {
            return downloadInfo.getCurBytes();
        }
        if (ox2 == null || chunkCount != ox2.size()) {
            return 0L;
        }
        return d(ox2);
    }

    public static String iw() {
        return dq(Downloader.getInstance(com.ss.android.socialbase.downloader.downloader.ox.ob()).getGlobalSaveTempDir(), false);
    }

    public static boolean iw(String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        String p2 = p(com.ss.android.socialbase.downloader.downloader.ox.ob());
        return p2 != null && p2.equals(str);
    }

    public static boolean iw(Throwable th) {
        if (th == null) {
            return false;
        }
        String o2 = o(th);
        return !TextUtils.isEmpty(o2) && o2.contains("Requested Range Not Satisfiable");
    }

    public static long kk(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        Matcher matcher = Pattern.compile("max-age=([0-9]+)").matcher(str);
        if (matcher.find()) {
            try {
                return Long.parseLong(matcher.group(1));
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return 0L;
    }

    private static String kk() {
        BufferedReader bufferedReader;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/" + Process.myPid() + "/cmdline"), "iso-8859-1"));
        } catch (Throwable unused) {
            bufferedReader = null;
        }
        try {
            StringBuilder sb = new StringBuilder();
            while (true) {
                int read = bufferedReader.read();
                if (read <= 0) {
                    break;
                }
                sb.append((char) read);
            }
            if (com.ss.android.socialbase.downloader.ox.dq.dq()) {
                com.ss.android.socialbase.downloader.ox.dq.d("Process", "get processName = " + sb.toString());
            }
            String sb2 = sb.toString();
            dq(bufferedReader);
            return sb2;
        } catch (Throwable unused2) {
            dq(bufferedReader);
            return null;
        }
    }

    public static boolean kk(Throwable th) {
        if (!(th instanceof BaseException)) {
            return false;
        }
        int errorCode = ((BaseException) th).getErrorCode();
        return errorCode == 1055 || errorCode == 1023 || errorCode == 1041 || errorCode == 1022 || errorCode == 1048 || errorCode == 1056 || errorCode == 1057 || errorCode == 1058 || errorCode == 1059 || errorCode == 1060 || errorCode == 1061 || errorCode == 1067 || errorCode == 1049 || errorCode == 1047 || errorCode == 1051 || errorCode == 1004 || errorCode == 1011 || errorCode == 1002 || errorCode == 1013;
    }

    public static File mn() {
        String str;
        try {
            str = Environment.getExternalStorageState();
        } catch (Exception unused) {
            str = "";
        }
        if ("mounted".equals(str)) {
            return Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
        }
        return null;
    }

    public static String mn(String str) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt <= 31 || charAt >= 127) {
                sb.append(String.format("\\u%04x", Integer.valueOf(charAt)));
            } else {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    public static boolean mn(Throwable th) {
        return com.ss.android.socialbase.downloader.downloader.ox.vf().dq(th);
    }

    private static String no() {
        String str;
        Throwable th;
        try {
            Method declaredMethod = Class.forName("android.app.ActivityThread", false, Application.class.getClassLoader()).getDeclaredMethod("currentProcessName", new Class[0]);
            declaredMethod.setAccessible(true);
            Object invoke = declaredMethod.invoke(null, null);
            if (!(invoke instanceof String)) {
                return null;
            }
            str = (String) invoke;
            try {
                if (TextUtils.isEmpty(str) || !com.ss.android.socialbase.downloader.ox.dq.dq()) {
                    return str;
                }
                com.ss.android.socialbase.downloader.ox.dq.d("Process", "processName = " + str);
                return str;
            } catch (Throwable th2) {
                th = th2;
                th.printStackTrace();
                return str;
            }
        } catch (Throwable th3) {
            str = null;
            th = th3;
        }
    }

    private static boolean no(String str) {
        Objects.toString(Thread.currentThread());
        if (!TextUtils.isEmpty(str)) {
            File file = new File(str);
            return file.isDirectory() && file.delete();
        }
        return false;
    }

    private static String o() {
        String processName;
        if (Build.VERSION.SDK_INT < 28) {
            return null;
        }
        try {
            processName = Application.getProcessName();
            if (!TextUtils.isEmpty(processName) && com.ss.android.socialbase.downloader.ox.dq.dq()) {
                com.ss.android.socialbase.downloader.ox.dq.d("Process", "processName = " + processName);
            }
            return processName;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private static String o(String str) {
        Matcher matcher;
        if (str == null) {
            return null;
        }
        try {
            if (mn == null) {
                mn = Pattern.compile("attachment;\\s*filename\\s*=\\s*\"([^\"]*)\"");
            }
            matcher = mn.matcher(str);
        } catch (Exception unused) {
        }
        if (matcher.find()) {
            return matcher.group(1);
        }
        if (ia == null) {
            ia = Pattern.compile("attachment;\\s*filename\\s*=\\s*(.*)");
        }
        Matcher matcher2 = ia.matcher(str);
        if (matcher2.find()) {
            return matcher2.group(1);
        }
        return null;
    }

    public static String o(Throwable th) {
        if (th == null) {
            return "";
        }
        try {
            return th.toString();
        } catch (Throwable th2) {
            th2.printStackTrace();
            return "throwable getMsg error";
        }
    }

    public static long ox(long j) {
        return System.currentTimeMillis() - j;
    }

    public static String ox(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return awf.c(str, ".tp");
    }

    public static void ox(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        File file = new File(str, str2);
        if (file.exists()) {
            Log.e(dq, "deleteFile: " + str + "/" + str2);
            file.delete();
        }
    }

    private static void ox(Throwable th, String str) throws com.ss.android.socialbase.downloader.exception.mn {
        com.ss.android.socialbase.downloader.exception.mn dq2 = com.ss.android.socialbase.downloader.downloader.ox.vf().dq(th, null);
        if (dq2 == null) {
            dq2 = com.ss.android.socialbase.downloader.downloader.ox.vf().dq(th.getCause(), null);
        }
        if (dq2 == null) {
            return;
        }
        throw new com.ss.android.socialbase.downloader.exception.mn(dq2.getErrorCode(), d(dq2, str)).dq(dq2.dq());
    }

    public static boolean ox() {
        Boolean bool = no;
        if (bool != null) {
            return bool.booleanValue();
        }
        String p2 = p(com.ss.android.socialbase.downloader.downloader.ox.ob());
        if (p2 != null) {
            if (p2.equals(com.ss.android.socialbase.downloader.downloader.ox.ob().getPackageName() + ":downloader")) {
                no = Boolean.TRUE;
                return no.booleanValue();
            }
        }
        no = Boolean.FALSE;
        return no.booleanValue();
    }

    public static boolean ox(int i) {
        return i == 200 || i == 201 || i == 0;
    }

    public static boolean ox(Context context) {
        NetworkInfo activeNetworkInfo;
        try {
            ConnectivityManager dq2 = dq(context);
            if (dq2 == null || (activeNetworkInfo = dq2.getActiveNetworkInfo()) == null) {
                return false;
            }
            return activeNetworkInfo.isConnected();
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean ox(BaseException baseException) {
        if (baseException == null) {
            return false;
        }
        if (baseException.getErrorCode() != 1011) {
            return baseException.getCause() != null && (baseException.getCause() instanceof SSLHandshakeException);
        }
        return true;
    }

    public static boolean ox(DownloadInfo downloadInfo) {
        return dq(downloadInfo, downloadInfo.isForce(), downloadInfo.getMd5());
    }

    public static boolean ox(com.ss.android.socialbase.downloader.network.mn mnVar) {
        if (mnVar == null) {
            return false;
        }
        return dq.dq(8) ? "chunked".equals(mnVar.dq("Transfer-Encoding")) || dq(mnVar) == -1 : dq(mnVar) == -1;
    }

    public static boolean ox(String str, String str2, String str3) {
        return dq(d(str, str2, str3));
    }

    public static boolean ox(Throwable th) {
        if (th == null) {
            return false;
        }
        String o2 = o(th);
        return !TextUtils.isEmpty(o2) && o2.contains("network not available");
    }

    public static boolean ox(List<com.ss.android.socialbase.downloader.model.ox> list) {
        if (list != null && list.size() != 0) {
            for (com.ss.android.socialbase.downloader.model.ox oxVar : list) {
                if (oxVar != null && !TextUtils.isEmpty(oxVar.dq()) && !TextUtils.isEmpty(oxVar.d()) && "download-tc21-1-15".equals(oxVar.dq()) && "download-tc21-1-15".equals(oxVar.d())) {
                    return true;
                }
            }
        }
        return false;
    }

    public static long p(String str) throws BaseException {
        try {
            return new StatFs(str).getAvailableBytes();
        } catch (IllegalArgumentException e2) {
            throw new BaseException(1050, e2);
        } catch (Throwable th) {
            throw new BaseException(1052, th);
        }
    }

    private static long p(List<com.ss.android.socialbase.downloader.model.d> list) {
        if (list == null || list.isEmpty()) {
            return -1L;
        }
        long j = -1;
        for (com.ss.android.socialbase.downloader.model.d dVar : list) {
            if (dVar != null && (dVar.q() <= dVar.f() || dVar.f() == 0)) {
                if (j == -1 || j > dVar.q()) {
                    j = dVar.q();
                }
            }
        }
        return j;
    }

    public static String p(Context context) {
        String str = ox;
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        String o2 = o();
        ox = o2;
        if (!TextUtils.isEmpty(o2)) {
            return ox;
        }
        String no2 = no();
        ox = no2;
        if (!TextUtils.isEmpty(no2)) {
            return ox;
        }
        String s2 = s(context);
        ox = s2;
        if (!TextUtils.isEmpty(s2)) {
            return ox;
        }
        String kk2 = kk();
        ox = kk2;
        return kk2;
    }

    public static boolean p() {
        return Looper.getMainLooper() == Looper.myLooper();
    }

    public static boolean p(int i) {
        return i == 206 || i == 200;
    }

    public static boolean p(DownloadInfo downloadInfo) {
        boolean z = false;
        if (downloadInfo.isDeleteCacheIfCheckFailed() || !TextUtils.isEmpty(downloadInfo.getLastModified())) {
            com.ss.android.socialbase.downloader.ox.dq.d(dq, "dcache::curt=" + System.currentTimeMillis() + " expired=" + downloadInfo.getCacheExpiredTime());
            if (System.currentTimeMillis() > downloadInfo.getCacheExpiredTime()) {
                z = true;
            }
        } else {
            com.ss.android.socialbase.downloader.ox.dq.d(dq, "dcache::last modify is emtpy, so just return cache");
        }
        com.ss.android.socialbase.downloader.ox.dq.d(dq, "cacheExpired::dcache::name=" + downloadInfo.getName() + " expired=" + z);
        return z;
    }

    public static boolean p(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        return new File(str, str2).exists();
    }

    public static boolean p(Throwable th) {
        if (th == null) {
            return false;
        }
        String o2 = o(th);
        return !TextUtils.isEmpty(o2) && o2.contains("Exception in connect");
    }

    public static long s(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return -1L;
        }
        List<com.ss.android.socialbase.downloader.model.d> ox2 = com.ss.android.socialbase.downloader.downloader.ox.e().ox(downloadInfo.getId());
        if (downloadInfo.getChunkCount() == 1) {
            return downloadInfo.getCurBytes();
        }
        if (ox2 != null && ox2.size() > 1) {
            long p2 = p(ox2);
            if (p2 >= 0) {
                return p2;
            }
        }
        return 0L;
    }

    public static com.ss.android.socialbase.downloader.constants.iw s(int i) {
        com.ss.android.socialbase.downloader.constants.iw iwVar = com.ss.android.socialbase.downloader.constants.iw.MAIN;
        com.ss.android.socialbase.downloader.constants.iw iwVar2 = com.ss.android.socialbase.downloader.constants.iw.SUB;
        if (i == iwVar2.ordinal()) {
            return iwVar2;
        }
        com.ss.android.socialbase.downloader.constants.iw iwVar3 = com.ss.android.socialbase.downloader.constants.iw.NOTIFICATION;
        return i == iwVar3.ordinal() ? iwVar3 : iwVar;
    }

    public static String s() {
        return dq(Downloader.getInstance(com.ss.android.socialbase.downloader.downloader.ox.ob()).getGlobalSaveDir(), true);
    }

    private static String s(Context context) {
        if (context == null) {
            return null;
        }
        try {
            int myPid = Process.myPid();
            ActivityManager activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY);
            if (activityManager != null) {
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : activityManager.getRunningAppProcesses()) {
                    if (runningAppProcessInfo.pid == myPid) {
                        if (com.ss.android.socialbase.downloader.ox.dq.dq()) {
                            com.ss.android.socialbase.downloader.ox.dq.d("Process", "processName = " + runningAppProcessInfo.processName);
                        }
                        return runningAppProcessInfo.processName;
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return null;
    }

    public static String s(String str) {
        if (str != null) {
            try {
                if (str.length() != 0) {
                    MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                    messageDigest.update(str.getBytes("UTF-8"));
                    return dq(messageDigest.digest());
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static String s(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String s2 = s(str2);
        return (TextUtils.isEmpty(s2) || str.contains(s2)) ? str : new File(str, s2).getAbsolutePath();
    }

    public static boolean s(Throwable th) {
        if (th == null) {
            return false;
        }
        String o2 = o(th);
        return !TextUtils.isEmpty(o2) && o2.contains("Precondition Failed");
    }
}
