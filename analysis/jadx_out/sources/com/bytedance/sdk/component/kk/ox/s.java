package com.bytedance.sdk.component.kk.ox;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.sdk.component.d.dq.f;
import com.bytedance.sdk.component.d.dq.q;
import g.awf;
import java.net.InetAddress;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

/* loaded from: classes.dex */
public class s {
    private int gh;
    private p ia;
    private Context mn;
    private dq ox;
    private boolean p;
    private d s;

    /* renamed from: d, reason: collision with root package name */
    private long f1996d = 0;
    private boolean iw = false;
    private int kk = 0;
    private long o = 19700101000L;
    private int no = 0;
    private HashMap<String, Integer> ig = new HashMap<>();
    private HashMap<String, Integer> mp = new HashMap<>();
    private int q = 0;
    private HashMap<String, Integer> jy = new HashMap<>();

    /* renamed from: f, reason: collision with root package name */
    private HashMap<String, Integer> f1997f = new HashMap<>();
    private boolean fw = true;
    private Map<String, Integer> cd = new HashMap();
    Handler dq = new Handler(Looper.getMainLooper()) { // from class: com.bytedance.sdk.component.kk.ox.s.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 10000) {
                return;
            }
            s.this.d(message.arg1 != 0);
        }
    };

    private s() {
    }

    public s(int i) {
        this.gh = i;
    }

    private void d(String str) {
        Map<String, String> mn;
        if (TextUtils.isEmpty(str) || (mn = mn()) == null || !mn.containsValue(str)) {
            return;
        }
        if (this.cd.get(str) == null) {
            this.cd.put(str, 1);
        } else {
            this.cd.put(str, Integer.valueOf(this.cd.get(str).intValue() + 1));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(boolean z) {
        if (iw() == null) {
            return;
        }
        com.bytedance.sdk.component.kk.p.ox.ox("TNCManager", "doUpdateRemote, ".concat(String.valueOf(z)));
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (!z) {
            if ((r0.no * 1000) + this.f1996d > elapsedRealtime) {
                com.bytedance.sdk.component.kk.p.ox.ox("TNCManager", "doUpdateRemote, time limit");
                return;
            }
        }
        this.f1996d = elapsedRealtime;
        mn.dq().dq(this.gh, this.mn).ox();
    }

    private boolean d(int i) {
        if (i < 100 || i >= 1000) {
            return true;
        }
        ox iw = iw();
        return (iw == null || TextUtils.isEmpty(iw.mp) || !iw.mp.contains(String.valueOf(i))) ? false : true;
    }

    private String dq(q qVar) {
        if (qVar != null && qVar.d() != null && qVar.d().dq() != null) {
            try {
                return InetAddress.getByName(qVar.d().dq().getHost()).getHostAddress();
            } catch (Exception unused) {
            }
        }
        return "";
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void dq(f fVar, String str) {
        int i;
        long j;
        ox iw;
        if (fVar != null && this.fw) {
            String dq = fVar.dq("tnc-cmd", null);
            if (TextUtils.isEmpty(dq)) {
                com.bytedance.sdk.component.kk.p.ox.ox("TNCManager", "handleTncProbe, no probeProto, ".concat(String.valueOf(str)));
                return;
            }
            String[] split = dq.split("@");
            if (split == null || split.length != 2) {
                com.bytedance.sdk.component.kk.p.ox.ox("TNCManager", "handleTncProbe, probeProto err, ".concat(String.valueOf(str)));
                return;
            }
            try {
                i = Integer.parseInt(split[0]);
                try {
                    j = Long.parseLong(split[1]);
                } catch (Throwable th) {
                    th = th;
                    th.printStackTrace();
                    com.bytedance.sdk.component.kk.p.ox.ox("TNCManager", "handleTncProbe, probeProto except, ".concat(String.valueOf(str)));
                    j = 0;
                    com.bytedance.sdk.component.kk.p.ox.ox("TNCManager", "handleTncProbe, local: " + this.kk + "@" + this.o + " svr: " + i + "@" + j + " " + str);
                    if (j > this.o) {
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                i = 0;
            }
            com.bytedance.sdk.component.kk.p.ox.ox("TNCManager", "handleTncProbe, local: " + this.kk + "@" + this.o + " svr: " + i + "@" + j + " " + str);
            if (j > this.o) {
                return;
            }
            this.kk = i;
            this.o = j;
            com.bytedance.sdk.openadsdk.api.plugin.d.d(this.mn, dq(), 0).edit().putInt("tnc_probe_cmd", i).putLong("tnc_probe_version", j).apply();
            if (this.kk != 10000 || (iw = iw()) == null) {
                return;
            }
            Random random = new Random(System.currentTimeMillis());
            long nextInt = iw.ig > 0 ? random.nextInt(r12) * 1000 : 0L;
            com.bytedance.sdk.component.kk.p.ox.ox("TNCManager", "handleTncProbe, updateConfig delay: " + nextInt + " " + str);
            dq(true, nextInt);
        }
    }

    private void dq(boolean z, long j) {
        if (this.dq.hasMessages(10000)) {
            return;
        }
        Message obtainMessage = this.dq.obtainMessage();
        obtainMessage.what = 10000;
        obtainMessage.arg1 = z ? 1 : 0;
        if (j > 0) {
            this.dq.sendMessageDelayed(obtainMessage, j);
        } else {
            this.dq.sendMessage(obtainMessage);
        }
    }

    private boolean dq(int i) {
        return i >= 200 && i < 400;
    }

    private void kk() {
        SharedPreferences d2 = com.bytedance.sdk.openadsdk.api.plugin.d.d(this.mn, dq(), 0);
        this.kk = d2.getInt("tnc_probe_cmd", 0);
        this.o = d2.getLong("tnc_probe_version", 19700101000L);
    }

    private void o() {
        com.bytedance.sdk.component.kk.p.ox.ox("TNCManager", "resetTNCControlState");
        this.no = 0;
        this.ig.clear();
        this.mp.clear();
        this.q = 0;
        this.jy.clear();
        this.f1997f.clear();
    }

    private void ox(String str) {
        if (!TextUtils.isEmpty(str) && this.cd.containsKey(str)) {
            this.cd.put(str, 0);
        }
    }

    private boolean p(String str) {
        Map<String, String> mn = mn();
        if (mn == null) {
            return false;
        }
        String str2 = mn.get(str);
        if (TextUtils.isEmpty(str2) || this.cd.get(str2) == null || this.cd.get(str2).intValue() < 3) {
            return false;
        }
        com.bytedance.sdk.component.kk.p.ox.ox("TNCManager", "handleHostMapping, TNC host faild num over limit: ".concat(String.valueOf(str)));
        return true;
    }

    public dq d() {
        return this.ox;
    }

    public String dq() {
        return "ttnet_tnc_config" + this.gh;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String dq(String str) {
        String str2;
        URL url;
        if (!TextUtils.isEmpty(str) && !str.contains("/network/get_network") && !str.contains("/get_domains/v4") && !str.contains("/ies/speed")) {
            String str3 = null;
            try {
                url = new URL(str);
                str2 = url.getProtocol();
            } catch (Throwable th) {
                th = th;
                str2 = null;
            }
            try {
                str3 = url.getHost();
            } catch (Throwable th2) {
                th = th2;
                th.printStackTrace();
                if (!TextUtils.isEmpty(str2)) {
                    if (!p(str3)) {
                    }
                }
                return str;
            }
            if (!TextUtils.isEmpty(str2) && (("http".equals(str2) || "https".equals(str2)) && !TextUtils.isEmpty(str3))) {
                if (!p(str3)) {
                    com.bytedance.sdk.component.kk.p.ox.ox("TNCManager", "handleHostMapping, TNC host faild num over limit: ".concat(String.valueOf(str3)));
                    return str;
                }
                Map<String, String> mn = mn();
                if (mn == null || !mn.containsKey(str3)) {
                    com.bytedance.sdk.component.kk.p.ox.ox("TNCManager", "handleHostMapping, nomatch: ".concat(String.valueOf(str3)));
                } else {
                    String str4 = mn.get(str3);
                    if (!TextUtils.isEmpty(str4)) {
                        com.bytedance.sdk.component.kk.p.ox.ox("TNCManager", "handleHostMapping, match, origin: ".concat(str));
                        String str5 = str2 + "://" + str3;
                        String i = awf.i(str2, "://", str4);
                        if (str.startsWith(str5)) {
                            str = str.replaceFirst(str5, i);
                        }
                        com.bytedance.sdk.component.kk.p.ox.ox("TNCManager", "handleHostMapping, target: ".concat(String.valueOf(str)));
                        return str;
                    }
                }
            }
        }
        return str;
    }

    public synchronized void dq(Context context, boolean z) {
        try {
            if (!this.iw) {
                this.mn = context;
                this.fw = z;
                this.ia = new p(context, z, this.gh);
                if (z) {
                    kk();
                }
                com.bytedance.sdk.component.kk.p.ox.ox("TNCManager", "initTnc, isMainProc: " + z + " probeCmd: " + this.kk + " probeVersion: " + this.o);
                this.ox = mn.dq().dq(this.gh, this.mn);
                this.iw = true;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void dq(q qVar, f fVar) {
        URL url;
        if (qVar == null || fVar == null) {
            return;
        }
        if (this.fw) {
            if (com.bytedance.sdk.component.kk.p.iw.dq(this.mn)) {
                try {
                    url = qVar.d().dq();
                } catch (Exception unused) {
                    url = null;
                }
                if (url == null) {
                    return;
                }
                String protocol = url.getProtocol();
                String host = url.getHost();
                String path = url.getPath();
                String dq = dq(qVar);
                int ox = fVar.ox();
                if ("http".equals(protocol) || "https".equals(protocol)) {
                    if (TextUtils.isEmpty(dq)) {
                        return;
                    }
                    com.bytedance.sdk.component.kk.p.ox.ox("TNCManager", "onResponse, url: " + protocol + "://" + host + "#" + dq + "#" + ox);
                    ox iw = iw();
                    if (iw != null && iw.f1994d) {
                        dq(fVar, host);
                    }
                    if (iw == null) {
                        return;
                    }
                    com.bytedance.sdk.component.kk.p.ox.ox("TNCManager", "onResponse, url matched: " + protocol + "://" + host + "#" + dq + "#" + ox + " " + this.no + "#" + this.ig.size() + "#" + this.mp.size() + " " + this.q + "#" + this.jy.size() + "#" + this.f1997f.size());
                    if (ox > 0) {
                        if (dq(ox)) {
                            if (this.no > 0 || this.q > 0) {
                                o();
                            }
                            ox(host);
                            return;
                        }
                        if (!d(ox)) {
                            this.q++;
                            this.jy.put(path, 0);
                            this.f1997f.put(dq, 0);
                            if (this.q >= iw.ia && this.jy.size() >= iw.kk && this.f1997f.size() >= iw.o) {
                                com.bytedance.sdk.component.kk.p.ox.ox("TNCManager", "onResponse, url doUpdate: " + protocol + "://" + host + "#" + dq + "#" + ox);
                                dq(false, 0L);
                                o();
                            }
                            d(host);
                        }
                    }
                }
            }
        }
    }

    public synchronized void dq(q qVar, Exception exc) {
        URL url;
        if (qVar != null) {
            if (qVar.d() != null && exc != null) {
                if (this.fw) {
                    if (com.bytedance.sdk.component.kk.p.iw.dq(this.mn)) {
                        try {
                            url = qVar.d().dq();
                        } catch (Exception unused) {
                            url = null;
                        }
                        if (url == null) {
                            return;
                        }
                        String protocol = url.getProtocol();
                        String host = url.getHost();
                        String path = url.getPath();
                        String dq = dq(qVar);
                        if ("http".equals(protocol) || "https".equals(protocol)) {
                            ox iw = iw();
                            if (iw == null) {
                                return;
                            }
                            com.bytedance.sdk.component.kk.p.ox.ox("TNCManager", "onError, url matched: " + protocol + "://" + host + "#" + dq + "# " + this.no + "#" + this.ig.size() + "#" + this.mp.size() + " " + this.q + "#" + this.jy.size() + "#" + this.f1997f.size());
                            this.no = this.no + 1;
                            this.ig.put(path, 0);
                            this.mp.put(dq, 0);
                            if (this.no >= iw.s && this.ig.size() >= iw.iw && this.mp.size() >= iw.mn) {
                                com.bytedance.sdk.component.kk.p.ox.ox("TNCManager", "onError, url doUpate: " + protocol + "://" + host + "#" + dq);
                                dq(false, 0L);
                                o();
                            }
                            d(host);
                        }
                    }
                }
            }
        }
    }

    public void dq(d dVar) {
        this.s = dVar;
    }

    public void dq(boolean z) {
        this.p = z;
    }

    public p ia() {
        return this.ia;
    }

    public ox iw() {
        p pVar = this.ia;
        if (pVar != null) {
            return pVar.ox();
        }
        return null;
    }

    public Map<String, String> mn() {
        ox iw = iw();
        if (iw != null) {
            return iw.p;
        }
        return null;
    }

    public boolean ox() {
        return this.p;
    }

    public d p() {
        return this.s;
    }

    public void s() {
        this.cd.clear();
    }
}
