package com.bykv.vk.openvk.component.video.dq.ox;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.bykv.vk.openvk.component.video.dq.d.d.ox;
import com.bykv.vk.openvk.component.video.dq.d.kk;
import com.bykv.vk.openvk.component.video.dq.d.s.s;
import com.bytedance.sdk.component.o.mn;
import g.awf;
import g.tn;
import java.io.Closeable;
import java.io.File;
import java.io.FilenameFilter;
import java.io.RandomAccessFile;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class dq {

    /* renamed from: d, reason: collision with root package name */
    private static final Handler f562d = new Handler(Looper.getMainLooper());
    public static final Charset dq = Charset.forName("UTF-8");

    /* renamed from: com.bykv.vk.openvk.component.video.dq.ox.dq$1, reason: invalid class name */
    public static class AnonymousClass1 implements FilenameFilter {
        private Pattern dq = Pattern.compile("^cpu[0-9]+$");

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return this.dq.matcher(str).matches();
        }
    }

    public static int d(String str) {
        return dq(str, 0);
    }

    public static String d(int i, int i2) {
        if (i >= 0 && i2 > 0) {
            return i + "-" + i2;
        }
        if (i > 0) {
            return i + "-";
        }
        if (i >= 0 || i2 <= 0) {
            return null;
        }
        return awf.ac(i2, "-");
    }

    public static String d(List<kk.d> list) {
        if (list == null || list.size() == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            kk.d dVar = list.get(0);
            if (dVar != null) {
                sb.append(dVar.dq);
                sb.append(": ");
                sb.append(dVar.f541d);
                sb.append("\r\n");
            }
        }
        return sb.toString();
    }

    public static String d(Map<String, String> map) {
        if (map == null || map.size() == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            sb.append((Object) entry.getKey());
            sb.append(": ");
            sb.append((Object) entry.getValue());
            sb.append("\r\n");
        }
        return sb.toString();
    }

    public static boolean d() {
        return Thread.currentThread() == Looper.getMainLooper().getThread();
    }

    public static int dq() {
        return Math.max(Runtime.getRuntime().availableProcessors(), 1);
    }

    public static int dq(com.bykv.vk.openvk.component.video.dq.d.s.dq dqVar) {
        int lastIndexOf;
        if (dqVar == null) {
            return -1;
        }
        if (dqVar.dq() == 200) {
            return dq(dqVar.dq("Content-Length", null), -1);
        }
        if (dqVar.dq() == 206) {
            String dq2 = dqVar.dq("Content-Range", null);
            if (!TextUtils.isEmpty(dq2) && (lastIndexOf = dq2.lastIndexOf("/")) >= 0 && lastIndexOf < dq2.length() - 1) {
                return dq(dq2.substring(lastIndexOf + 1), -1);
            }
        }
        return -1;
    }

    public static int dq(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return i;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return i;
        }
    }

    public static com.bykv.vk.openvk.component.video.dq.d.d.dq dq(com.bykv.vk.openvk.component.video.dq.d.s.dq dqVar, ox oxVar, String str, int i) {
        String str2;
        String str3;
        com.bykv.vk.openvk.component.video.dq.d.d.dq query = oxVar.query(str, i);
        if (query == null) {
            int dq2 = dq(dqVar);
            String dq3 = dqVar.dq("Content-Type", null);
            if (dq2 > 0 && !TextUtils.isEmpty(dq3)) {
                s mn = dqVar.mn();
                String str4 = "";
                if (mn != null) {
                    str3 = mn.f555d;
                    str2 = d(mn.s);
                } else {
                    str2 = "";
                    str3 = str2;
                }
                String d2 = d(dqVar.ox());
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("requestUrl", str3);
                    jSONObject.put("requestHeaders", str2);
                    jSONObject.put("responseHeaders", d2);
                    str4 = jSONObject.toString();
                } catch (Throwable unused) {
                }
                com.bykv.vk.openvk.component.video.dq.d.d.dq dqVar2 = new com.bykv.vk.openvk.component.video.dq.d.d.dq(str, dq3, dq2, i, str4);
                oxVar.insert(dqVar2);
                return dqVar2;
            }
        }
        return query;
    }

    public static String dq(int i, int i2) {
        String d2 = d(i, i2);
        if (d2 == null) {
            return null;
        }
        return "bytes=".concat(d2);
    }

    public static String dq(com.bykv.vk.openvk.component.video.dq.d.d.dq dqVar, int i) {
        StringBuilder sb = new StringBuilder();
        if (i <= 0) {
            sb.append("HTTP/1.1 200 OK\r\n");
        } else {
            sb.append("HTTP/1.1 206 Partial Content\r\n");
        }
        sb.append("Accept-Ranges: bytes\r\nContent-Type: ");
        sb.append(dqVar.f522d);
        sb.append("\r\n");
        if (i <= 0) {
            sb.append("Content-Length: ");
            sb.append(dqVar.ox);
            sb.append("\r\n");
        } else {
            sb.append("Content-Range: bytes ");
            sb.append(i);
            sb.append("-");
            sb.append(dqVar.ox - 1);
            sb.append("/");
            sb.append(dqVar.ox);
            sb.append("\r\nContent-Length: ");
            sb.append(dqVar.ox - i);
            sb.append("\r\n");
        }
        sb.append("Connection: close\r\n\r\n");
        String sb2 = sb.toString();
        boolean z = com.bykv.vk.openvk.component.video.dq.d.s.ox;
        return sb2;
    }

    public static String dq(com.bykv.vk.openvk.component.video.dq.d.s.dq dqVar, int i) {
        int dq2;
        if (dqVar == null || !dqVar.d()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(dqVar.s().toUpperCase());
        sb.append(' ');
        sb.append(dqVar.dq());
        sb.append(' ');
        sb.append(dqVar.iw());
        sb.append("\r\n");
        if (com.bykv.vk.openvk.component.video.dq.d.s.ox) {
            dqVar.s().toUpperCase();
            dqVar.dq();
            dqVar.iw();
        }
        List<kk.d> dq3 = dq(dqVar.ox());
        boolean z = true;
        if (dq3 != null) {
            int size = dq3.size();
            for (int i2 = 0; i2 < size; i2++) {
                kk.d dVar = dq3.get(i2);
                if (dVar != null) {
                    String str = dVar.dq;
                    String str2 = dVar.f541d;
                    awf.y(sb, str, ": ", str2, "\r\n");
                    if ("Content-Range".equalsIgnoreCase(str) || ("Accept-Ranges".equalsIgnoreCase(str) && "bytes".equalsIgnoreCase(str2))) {
                        z = false;
                    }
                }
            }
        }
        if (z && (dq2 = dq(dqVar)) > 0) {
            sb.append("Content-Range: bytes ");
            sb.append(Math.max(i, 0));
            sb.append("-");
            sb.append(dq2 - 1);
            sb.append("/");
            sb.append(dq2);
            sb.append("\r\n");
        }
        sb.append("Connection: close\r\n\r\n");
        String sb2 = sb.toString();
        boolean z2 = com.bykv.vk.openvk.component.video.dq.d.s.ox;
        return sb2;
    }

    public static String dq(com.bykv.vk.openvk.component.video.dq.d.s.dq dqVar, boolean z, boolean z2) {
        String dq2;
        if (dqVar == null) {
            if (com.bykv.vk.openvk.component.video.dq.d.s.ox) {
                Log.e("TAG_PROXY_Response", "response null");
            }
            return "response null";
        }
        if (!dqVar.d()) {
            if (com.bykv.vk.openvk.component.video.dq.d.s.ox) {
                Log.e("TAG_PROXY_Response", "response code: " + dqVar.dq());
            }
            return "response code: " + dqVar.dq();
        }
        String dq3 = dqVar.dq("Content-Type", null);
        if (!ox(dq3)) {
            if (com.bykv.vk.openvk.component.video.dq.d.s.ox) {
                Log.e("TAG_PROXY_Response", "Content-Type: " + dq3);
            }
            return tn.x("Content-Type: ", dq3);
        }
        int dq4 = dq(dqVar);
        if (dq4 <= 0) {
            if (com.bykv.vk.openvk.component.video.dq.d.s.ox) {
                Log.e("TAG_PROXY_Response", "Content-Length: " + dq4);
            }
            return awf.ac(dq4, "Content-Length: ");
        }
        if (z && ((dq2 = dqVar.dq("Accept-Ranges", null)) == null || !dq2.contains("bytes"))) {
            if (com.bykv.vk.openvk.component.video.dq.d.s.ox) {
                Log.e("TAG_PROXY_Response", "Accept-Ranges: " + dq2);
            }
            return tn.x("Accept-Ranges: ", dq2);
        }
        if (!z2 || dqVar.p() != null) {
            return null;
        }
        if (com.bykv.vk.openvk.component.video.dq.d.s.ox) {
            Log.e("TAG_PROXY_Response", "response body null");
        }
        return "response body null";
    }

    public static List<kk.d> dq(List<kk.d> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        if (com.bykv.vk.openvk.component.video.dq.d.s.ox) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                list.get(i);
            }
        }
        ArrayList arrayList = new ArrayList();
        for (kk.d dVar : list) {
            if ("Host".equals(dVar.dq) || "Keep-Alive".equals(dVar.dq) || "Connection".equals(dVar.dq) || "Proxy-Connection".equals(dVar.dq)) {
                arrayList.add(dVar);
            }
        }
        list.removeAll(arrayList);
        if (com.bykv.vk.openvk.component.video.dq.d.s.ox) {
            int size2 = list.size();
            for (int i2 = 0; i2 < size2; i2++) {
                list.get(i2);
            }
        }
        return list;
    }

    public static List<kk.d> dq(Map<String, String> map) {
        if (map != null && !map.isEmpty()) {
            try {
                Set<Map.Entry<String, String>> entrySet = map.entrySet();
                ArrayList arrayList = new ArrayList();
                for (Map.Entry<String, String> entry : entrySet) {
                    arrayList.add(new kk.d(entry.getKey(), entry.getValue()));
                }
                return arrayList;
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return null;
    }

    public static List<String> dq(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            if (dq(str)) {
                arrayList.add(str);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList;
    }

    public static void dq(com.bytedance.sdk.component.o.kk kkVar) {
        if (kkVar != null) {
            if (d()) {
                mn.d(kkVar);
                if (com.bykv.vk.openvk.component.video.dq.d.s.ox) {
                    Log.e("TAG_PROXY_UTIL", "invoke in pool thread");
                    return;
                }
                return;
            }
            kkVar.run();
            if (com.bykv.vk.openvk.component.video.dq.d.s.ox) {
                Log.e("TAG_PROXY_UTIL", "invoke calling thread");
            }
        }
    }

    public static void dq(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable unused) {
            }
        }
    }

    public static void dq(RandomAccessFile randomAccessFile) {
        if (randomAccessFile != null) {
            try {
                randomAccessFile.getFD().sync();
                randomAccessFile.close();
            } catch (Throwable unused) {
            }
        }
    }

    public static void dq(Runnable runnable) {
        if (runnable != null) {
            if (d()) {
                runnable.run();
            } else {
                f562d.post(runnable);
            }
        }
    }

    public static void dq(ServerSocket serverSocket) {
        if (serverSocket != null) {
            try {
                serverSocket.close();
            } catch (Throwable unused) {
            }
        }
    }

    public static void dq(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (Throwable unused) {
            }
        }
    }

    public static boolean dq(String str) {
        if (str != null) {
            return str.startsWith("http://") || str.startsWith("https://");
        }
        return false;
    }

    public static boolean ox(String str) {
        if (str != null) {
            return str.startsWith("video/") || "application/octet-stream".equals(str) || "binary/octet-stream".equals(str);
        }
        return false;
    }
}
