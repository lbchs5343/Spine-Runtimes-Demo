package com.bytedance.sdk.openadsdk.core.e.dq;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.o.mn;
import com.bytedance.sdk.component.utils.q;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.core.gh.ig;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.awf;
import g.cpo;
import g.cpq;
import g.hat;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.FilenameFilter;
import java.io.IOException;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d {

    /* renamed from: d, reason: collision with root package name */
    private static final String f2840d;
    private static final String dq;
    private static long ia;
    private static long kk;
    private static final HashMap<String, String> mn;
    private static final String ox;
    private static final d s;
    private EventListener iw;
    private FileOutputStream p;

    /* renamed from: com.bytedance.sdk.openadsdk.core.e.dq.d$d, reason: collision with other inner class name */
    public static final class C0157d extends Exception {
        private int dq;

        public C0157d(int i, String str) {
            super(str);
            this.dq = i;
        }

        public int dq() {
            return this.dq;
        }
    }

    public static final class dq {

        /* renamed from: d, reason: collision with root package name */
        public int f2843d;
        public String dq;
        public int ia;
        public String iw;
        public int kk;
        public boolean mn;
        public String no;
        public int o;
        public String ox;
        public String p;
        public String s;

        private dq() {
        }

        public boolean dq() {
            return TextUtils.equals(this.dq, TTAdSdk.PLUGIN_ADAPTER_PACKAGE_NAME);
        }

        public String toString() {
            try {
                return new JSONObject().put("package_name", this.dq).put("version_code", this.f2843d).put("sign", this.s).put("max_version", this.kk).put("min_version", this.ia).put("is_revert", this.mn).put(TTDownloadField.TT_MD5, this.iw).put("plugin_file", this.no).toString();
            } catch (JSONException unused) {
                return "";
            }
        }
    }

    static {
        StringBuilder sb = new StringBuilder();
        String str = File.separator;
        dq = awf.ad(sb, str, "next");
        f2840d = awf.c(str, "tmp");
        ox = awf.c(str, "conf");
        s = new d();
        mn = new HashMap<>();
    }

    private d() {
    }

    private static int d(String str) {
        if (str != null) {
            try {
                return Integer.parseInt(str.replace(".", ""));
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    public static String d() {
        String dq2 = com.bytedance.sdk.openadsdk.core.e.d.d.dq();
        return "com.byted.live.lite".concat("arm64-v8a".equals(dq2) ? "@64" : "armeabi-v7a".equals(dq2) ? "@32" : "armeabi".equals(dq2) ? "@armeabi" : "");
    }

    private void d(Context context) {
        FileOutputStream fileOutputStream = this.p;
        if (fileOutputStream != null) {
            try {
                fileOutputStream.close();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        File p = p(context);
        if (p.exists()) {
            for (File file : p.listFiles()) {
                try {
                    if (!"update.lock".equals(file.getName())) {
                        file.delete();
                    }
                } catch (Exception unused) {
                }
            }
        }
    }

    private static boolean d(int i) {
        File dq2 = com.bytedance.sdk.openadsdk.api.plugin.d.dq(wp.getContext());
        if (dq2 == null) {
            return false;
        }
        return new File(dq2.getParent() + "/pangle_p/com.byted.pangle/version-" + i).exists();
    }

    private static boolean d(dq dqVar) {
        JSONObject optJSONObject;
        int d2 = dq(dqVar) ? op.f3334d : (!no.ia().wp().has(dqVar.dq) || (optJSONObject = no.ia().wp().optJSONObject(dqVar.dq)) == null) ? 0 : d(optJSONObject.optString(PluginConstants.KEY_SDK_VERSION));
        return d2 >= dqVar.ia && d2 <= dqVar.kk;
    }

    private boolean d(dq dqVar, int i) {
        dq(dqVar);
        return (i == 21 || i == 18) ? false : true;
    }

    private static int dq(Context context, File file, dq dqVar) throws C0157d {
        String str;
        if (dqVar == null) {
            return 2;
        }
        try {
            if (TextUtils.isEmpty(dqVar.p)) {
                return 2;
            }
            if (TextUtils.isEmpty(dqVar.dq)) {
                return 12;
            }
            if (!dq(dqVar) && !no.ia().wp().has(dqVar.dq)) {
                return 17;
            }
            if (ox(dqVar)) {
                return 18;
            }
            if (d(dqVar.f2843d)) {
                return 21;
            }
            if (!d(dqVar)) {
                return 19;
            }
            File iw = iw(context);
            if (!iw.exists()) {
                iw.mkdirs();
            }
            boolean z = true;
            if (dq(dqVar) && op.f3334d >= dqVar.f2843d) {
                String str2 = "-" + s.d(dqVar.dq) + "-" + op.f3334d + "-" + op.f3334d;
                int i = op.f3334d;
                dqVar.kk = i;
                dqVar.ia = i;
                dqVar.mn = true;
                dq(new File(iw, str2 + ".conf"), dqVar);
                return 10;
            }
            if (TextUtils.isEmpty(dqVar.s) && !dqVar.dq()) {
                return 1;
            }
            String d2 = s.d(dqVar.dq);
            StringBuilder sb = new StringBuilder();
            String d3 = s.d(dqVar.s);
            if (!TextUtils.isEmpty(d3)) {
                sb.append(d3);
                sb.append("-");
            }
            sb.append(d2);
            sb.append("-");
            sb.append(dqVar.ia);
            sb.append("-");
            sb.append(dqVar.kk);
            String sb2 = sb.toString();
            File s2 = s(context);
            if (!s2.exists()) {
                s2.mkdirs();
            }
            File file2 = new File(s2, sb2 + (dqVar.dq() ? ".dex.zip" : ".apk"));
            if (file2.exists()) {
                dqVar.iw = s.dq(file2);
                dqVar.no = file2.getAbsolutePath();
                return 16;
            }
            if (file2.getName().equals(mn.get(dqVar.dq))) {
                return 21;
            }
            ig.dq().dq(dqVar.dq, dq(dqVar) ? 6607 : 0, dqVar.f2843d, dqVar.p, 7, "", 0L);
            File file3 = new File(file, sb2);
            com.bytedance.sdk.component.kk.d.d p = com.bytedance.sdk.openadsdk.core.le.s.dq().d().p();
            p.dq(dqVar.p);
            p.dq(file.getAbsolutePath(), sb2);
            ia = System.currentTimeMillis();
            com.bytedance.sdk.component.kk.d dq2 = p.dq();
            if (dq2 == null || !dq2.ia()) {
                if (dq2 != null) {
                    str = dq2.dq() + " : " + dq2.d();
                } else {
                    str = "no response";
                }
                throw new C0157d(9, str);
            }
            kk = System.currentTimeMillis();
            if (!file3.exists()) {
                return 13;
            }
            dq(s2, d2);
            dq(iw, d2);
            if (!file3.renameTo(file2)) {
                return 5;
            }
            File file4 = new File(iw, file3.getName() + ".conf");
            dqVar.iw = s.dq(file2);
            dqVar.no = file2.getAbsolutePath();
            if (dqVar.f2843d >= p(dqVar)) {
                z = false;
            }
            dqVar.mn = z;
            return dq(file4, dqVar) ? 6 : 15;
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.ig.d("PluginUpdater", "Download file error: " + e2);
            if (e2 instanceof C0157d) {
                throw e2;
            }
            throw new C0157d(14, e2.getMessage());
        }
    }

    public static d dq() {
        return s;
    }

    public static String dq(String str) {
        return ("com.byted.live.lite@64".equals(str) || "com.byted.live.lite@32".equals(str) || "com.byted.live.lite@armeabi".equals(str)) ? "com.byted.live.lite" : str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:11:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0057  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void dq(Context context, dq dqVar) {
        int dq2;
        String message;
        String str;
        int i;
        try {
        } catch (C0157d e2) {
            dq2 = e2.dq();
            message = e2.getMessage();
            dq(dqVar.dq, 1004);
        }
        if (dq(context, dqVar.o, dqVar.dq)) {
            dq2 = dq(context, p(context), dqVar);
            dq(dqVar, dq2);
            message = "";
            str = message;
            i = dq2;
            ig.dq().dq(dqVar.dq, !dq(dqVar) ? 6607 : 0, dqVar.f2843d, dqVar.p, i, str, kk - ia);
        }
        str = no.ia().fw() + ":" + dqVar.o;
        i = 20;
        ig.dq().dq(dqVar.dq, !dq(dqVar) ? 6607 : 0, dqVar.f2843d, dqVar.p, i, str, kk - ia);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(final Context context, List<dq> list) {
        synchronized ("__tt_pl_up_lock__") {
            try {
                try {
                } catch (Exception e2) {
                    ig.dq().dq("", 6607, 0, "", 14, e2.getMessage(), 0L);
                    com.bytedance.sdk.component.utils.ig.d("PluginUpdater", "Handle file error: " + e2);
                }
                if (!dq(context)) {
                    d(context);
                    return;
                }
                list.size();
                final CountDownLatch countDownLatch = new CountDownLatch(list.size());
                for (final dq dqVar : list) {
                    mn.d(new kk("pl download") { // from class: com.bytedance.sdk.openadsdk.core.e.dq.d.2
                        @Override // java.lang.Runnable
                        public void run() {
                            d.this.dq(context, dqVar);
                            countDownLatch.countDown();
                        }
                    });
                }
                countDownLatch.await();
                d(context);
            } catch (Throwable th) {
                d(context);
                throw th;
            }
        }
    }

    private void dq(dq dqVar, int i) {
        if (this.iw == null || !d(dqVar, i)) {
            return;
        }
        String dqVar2 = dqVar.toString();
        hat f2 = hat.f();
        SparseArray sparseArray = f2.f19148c;
        sparseArray.put(2, dqVar2);
        sparseArray.put(3, dqVar.dq);
        cpo k = f2.k();
        boolean z = i == 6 || i == 10 || i == 16;
        cpq f3 = cpq.f();
        f3.f13287e = z;
        f3.f13286d = z ? 0 : 1004;
        f3.f13284b = k;
        try {
            ValueSet onEvent = this.iw.onEvent(1, f3.h());
            if (onEvent == null || !onEvent.booleanValue(4) || dqVar.no == null) {
                return;
            }
            HashMap<String, String> hashMap = mn;
            hashMap.put(dqVar.dq, new File(dqVar.no).getName());
            dq(dqVar.dq, dqVar.ox);
            hashMap.values();
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.ig.ox("PluginUpdater", "Download pl done, but install error:" + e2.getMessage());
        }
    }

    private static void dq(File file, final String str) {
        file.listFiles(new FilenameFilter() { // from class: com.bytedance.sdk.openadsdk.core.e.dq.d.3
            @Override // java.io.FilenameFilter
            public boolean accept(File file2, String str2) {
                if (str2 == null || !str2.contains(str)) {
                    return false;
                }
                new File(file2, str2).delete();
                com.bytedance.sdk.component.utils.ig.d("PluginUpdater", "Delete file: ".concat(str2));
                return false;
            }
        });
    }

    private static void dq(String str, String str2) {
        if (str == null) {
            return;
        }
        no.ia().dq(str, str2);
    }

    private boolean dq(int i) {
        if (i != 1) {
            if (i == 3 || i == 4 || i == 5) {
                return false;
            }
        } else if (!q.p(wp.getContext())) {
            return false;
        }
        return true;
    }

    private boolean dq(Context context) {
        try {
            File p = p(context);
            if (!p.exists()) {
                p.mkdirs();
            }
            File file = new File(p, "update.lock");
            if (!file.exists()) {
                file.createNewFile();
            }
            if (!file.exists()) {
                com.bytedance.sdk.component.utils.ig.d("PluginUpdater", "create lock file failed");
                return false;
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            this.p = fileOutputStream;
            FileLock tryLock = fileOutputStream.getChannel().tryLock();
            if (tryLock != null && tryLock.isValid()) {
                return true;
            }
            com.bytedance.sdk.component.utils.ig.d("PluginUpdater", "Acquire file lock failed");
            this.p.close();
            return false;
        } catch (Throwable th) {
            FileOutputStream fileOutputStream2 = this.p;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException unused) {
                }
            }
            com.bytedance.sdk.component.utils.ig.d("PluginUpdater", "Try get file lock failed:" + th);
            return false;
        }
    }

    private boolean dq(Context context, int i, String str) {
        int dq2 = no.ia().fw().dq(str);
        if (no.ia().ce()) {
            return dq(dq2);
        }
        if (i != -1) {
            if (i != 1 && i != 2 && i != 3) {
                if (i == 4 || i == 5) {
                    return false;
                }
                if (dq2 == 3) {
                    i = 1;
                }
            }
            return dq(i);
        }
        i = dq2;
        return dq(i);
    }

    private static boolean dq(dq dqVar) {
        return "com.byted.pangle".equals(dqVar.dq);
    }

    private static boolean dq(File file, dq dqVar) {
        try {
            FileWriter fileWriter = new FileWriter(file);
            fileWriter.write(dqVar.toString());
            fileWriter.close();
            return true;
        } catch (IOException unused) {
            com.bytedance.sdk.component.utils.ig.d("PluginUpdater", "Write config failed;");
            return false;
        }
    }

    private static File iw(Context context) {
        return new File(ox(context), ox);
    }

    private static File ox(Context context) {
        return com.bytedance.sdk.openadsdk.api.plugin.d.dq(context, "tt_pangle_bykv_file", 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static List<dq> ox(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i);
                if (optJSONObject != null) {
                    dq dqVar = new dq();
                    dqVar.dq = dq(optJSONObject.optString("package_name"));
                    dqVar.f2843d = optJSONObject.optInt("version_code");
                    dqVar.ox = optJSONObject.optString("version_name");
                    dqVar.p = optJSONObject.optString("download_url");
                    dqVar.s = optJSONObject.optString("sign");
                    dqVar.ia = d(optJSONObject.optString("min_version"));
                    dqVar.kk = d(optJSONObject.optString("max_version"));
                    dqVar.o = optJSONObject.optInt("plugin_update_network", -2);
                    arrayList.add(dqVar);
                }
            }
        }
        return arrayList;
    }

    private static boolean ox(dq dqVar) {
        if (dq(dqVar)) {
            return 6607 == dqVar.f2843d;
        }
        JSONObject optJSONObject = no.ia().wp().optJSONObject(dqVar.dq);
        return (optJSONObject != null ? d(optJSONObject.optString(PluginConstants.KEY_PLUGIN_VERSION)) : 0) == dqVar.f2843d;
    }

    private static int p(dq dqVar) {
        JSONObject optJSONObject;
        if (dq(dqVar)) {
            return 6607;
        }
        if (!no.ia().wp().has(dqVar.dq) || (optJSONObject = no.ia().wp().optJSONObject(dqVar.dq)) == null) {
            return 0;
        }
        return d(optJSONObject.optString(PluginConstants.KEY_PLUGIN_VERSION));
    }

    private static File p(Context context) {
        return new File(ox(context), f2840d);
    }

    private static File s(Context context) {
        return new File(ox(context), dq);
    }

    public void dq(EventListener eventListener) {
        this.iw = eventListener;
    }

    public void dq(String str, int i) {
        if (this.iw == null) {
            return;
        }
        hat f2 = hat.f();
        f2.f19148c.put(3, str);
        cpo k = f2.k();
        cpq f3 = cpq.f();
        f3.f13287e = false;
        f3.f13286d = i;
        f3.f13284b = k;
        this.iw.onEvent(1, f3.h());
    }

    public void dq(final JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() == 0) {
            return;
        }
        final Context applicationContext = wp.getContext().getApplicationContext();
        mn.d(new kk("updatePlugin") { // from class: com.bytedance.sdk.openadsdk.core.e.dq.d.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    d.this.dq(applicationContext, (List<dq>) d.ox(jSONArray));
                } catch (Throwable unused) {
                }
            }
        });
    }
}
