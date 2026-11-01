package com.bytedance.msdk.ox.s.d;

import android.text.TextUtils;
import com.bytedance.msdk.core.no.kk;
import com.bytedance.msdk.core.no.no;
import com.bytedance.msdk.d.s;
import com.bytedance.msdk.dq.s.iw;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.List;

/* loaded from: classes.dex */
public class d implements dq {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.msdk.ox.d.d.dq f1229d;
    private no dq;
    private long ia = -1;
    private int iw;
    private int kk;
    private boolean mn;
    private String ox;
    private String p;
    private int s;

    private d() {
    }

    public static d dq(no noVar, com.bytedance.msdk.ox.d.d.dq dqVar) {
        d dVar = new d();
        dVar.dq = noVar;
        dVar.f1229d = dqVar;
        return dVar;
    }

    public double bl() {
        no noVar = this.dq;
        if (noVar != null) {
            return noVar.i();
        }
        return 0.0d;
    }

    public String c() {
        no noVar = this.dq;
        return noVar != null ? noVar.er() : "";
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00bf, code lost:
    
        if (r2 == 2) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00ca, code lost:
    
        if (r2 != 7) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00d5, code lost:
    
        if (r2 == 3) goto L74;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String cd() {
        String str;
        no noVar = this.dq;
        String str2 = "";
        if (noVar == null) {
            return "";
        }
        String jy = noVar.jy();
        jy.getClass();
        switch (jy) {
            case "klevin":
                str = "com.bytedance.msdk.adapter.klevin.Klevin";
                break;
            case "pangle":
                str = "com.bytedance.msdk.adapter.pangle_csjm.Pangle";
                break;
            case "sigmob":
                str = "com.bytedance.msdk.adapter.sigmob.Sigmob";
                break;
            case "ks":
                str = "com.bytedance.msdk.adapter.ks.Ks";
                break;
            case "gdt":
                str = "com.bytedance.msdk.adapter.gdt.Gdt";
                break;
            case "admob":
                str = "com.bytedance.msdk.adapter.admob.Admob";
                break;
            case "baidu":
                str = "com.bytedance.msdk.adapter.baidu.Baidu";
                break;
            case "unity":
                str = "com.bytedance.msdk.adapter.unity.Unity";
                break;
            case "mintegral":
                str = "com.bytedance.msdk.adapter.mintegral.Mintegral";
                break;
            default:
                str = "";
                break;
        }
        int iw = this.dq.iw();
        switch (this.dq.mp()) {
            case 1:
                str2 = "BannerLoader";
                break;
            case 2:
                str2 = "InterstitialLoader";
                break;
            case 3:
                str2 = "SplashLoader";
                break;
            case 5:
                str2 = "NativeLoader";
                if (iw != 4) {
                    if (iw != 5) {
                    }
                    str2 = "DrawLoader";
                    break;
                }
                break;
            case 7:
                str2 = "RewardLoader";
                if (iw != 6) {
                }
                break;
            case 8:
                str2 = "FullVideoLoader";
                break;
            case 9:
                str2 = "DrawLoader";
                break;
            case 10:
                if (iw != 1) {
                }
                str2 = "InterstitialLoader";
                break;
        }
        return str.concat(str2);
    }

    public Object ce() {
        if (k() && op() != null) {
            return op().d();
        }
        return null;
    }

    @Override // com.bytedance.msdk.ox.s.d.dq
    public String d() {
        return this.p;
    }

    public void d(int i) {
        this.iw = i;
    }

    public void d(String str) {
        this.p = str;
    }

    public void dq(int i) {
        this.kk = i;
    }

    public void dq(long j) {
        this.ia = j;
    }

    public void dq(final com.bytedance.msdk.api.dq dqVar, final no noVar) {
        iw.dq(new Runnable() { // from class: com.bytedance.msdk.ox.s.d.d.2
            @Override // java.lang.Runnable
            public void run() {
                if (d.this.f1229d != null) {
                    d.this.f1229d.dq(dqVar, noVar);
                }
            }
        });
    }

    public void dq(String str) {
        this.ox = str;
    }

    public void dq(final List<s> list, final no noVar) {
        iw.dq(new Runnable() { // from class: com.bytedance.msdk.ox.s.d.d.1
            @Override // java.lang.Runnable
            public void run() {
                if (d.this.f1229d != null) {
                    d.this.f1229d.dq(list, noVar);
                }
            }
        });
    }

    public void dq(boolean z) {
        this.mn = z;
    }

    @Override // com.bytedance.msdk.ox.s.d.dq
    public boolean dq() {
        no noVar = this.dq;
        return noVar != null && noVar.gh() == 1;
    }

    public String e() {
        return (k() && op() != null) ? op().o() : "";
    }

    public String f() {
        no noVar = this.dq;
        return noVar != null ? noVar.kx() : "";
    }

    public String fw() {
        return this.ox;
    }

    public int gh() {
        no noVar = this.dq;
        if (noVar != null) {
            return noVar.gh();
        }
        return 0;
    }

    public int h() {
        no noVar = this.dq;
        if (noVar != null) {
            return noVar.dq();
        }
        return 0;
    }

    public int i() {
        no noVar = this.dq;
        if (noVar != null) {
            return noVar.e();
        }
        return 0;
    }

    public no ia() {
        return this.dq;
    }

    public String ig() {
        no noVar = this.dq;
        return noVar != null ? noVar.cd() : "";
    }

    public String ir() {
        no noVar = this.dq;
        return noVar != null ? noVar.q() : "";
    }

    public int iw() {
        return this.iw;
    }

    public double ji() {
        no noVar;
        if (k() || dq() || wp() || (noVar = this.dq) == null) {
            return 0.0d;
        }
        return noVar.k();
    }

    public int jy() {
        no noVar = this.dq;
        if (noVar != null) {
            return noVar.iw();
        }
        return 0;
    }

    public boolean k() {
        no noVar = this.dq;
        return noVar != null && noVar.gh() == 2;
    }

    public void kk() {
        iw.dq(new Runnable() { // from class: com.bytedance.msdk.ox.s.d.d.3
            @Override // java.lang.Runnable
            public void run() {
                if (d.this.f1229d != null) {
                    d.this.f1229d.dq();
                }
            }
        });
    }

    public int kx() {
        no noVar = this.dq;
        if (noVar != null) {
            return noVar.mp();
        }
        return 0;
    }

    public String le() {
        no noVar = this.dq;
        return noVar != null ? noVar.jy() : "";
    }

    public int mn() {
        return this.s;
    }

    public String mp() {
        no noVar = this.dq;
        return noVar != null ? noVar.jy() : "";
    }

    public double n() {
        no noVar = this.dq;
        if (noVar != null) {
            return noVar.le();
        }
        return 0.0d;
    }

    public boolean no() {
        no noVar = this.dq;
        if (noVar != null) {
            return TextUtils.equals(noVar.jy(), MediationConstant.ADN_PANGLE);
        }
        return false;
    }

    public boolean o() {
        no noVar = this.dq;
        if (noVar != null) {
            return noVar.wn();
        }
        return false;
    }

    public kk op() {
        no noVar = this.dq;
        if (noVar != null) {
            return noVar.ji();
        }
        return null;
    }

    public int ox() {
        return this.kk;
    }

    public void ox(int i) {
        this.s = i;
    }

    public long p() {
        return this.ia;
    }

    public int q() {
        no noVar = this.dq;
        if (noVar != null) {
            return noVar.o();
        }
        return 0;
    }

    public int r() {
        no noVar = this.dq;
        if (noVar != null) {
            return noVar.wp();
        }
        return 0;
    }

    public boolean s() {
        return this.mn;
    }

    public int u() {
        no noVar = this.dq;
        if (noVar != null) {
            return noVar.kk();
        }
        return 0;
    }

    public boolean wp() {
        no noVar = this.dq;
        return noVar != null && noVar.gh() == 3;
    }
}
