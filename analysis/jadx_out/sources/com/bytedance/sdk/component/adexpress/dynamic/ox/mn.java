package com.bytedance.sdk.component.adexpress.dynamic.ox;

import android.graphics.Color;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.component.adexpress.dynamic.p.no;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class mn {

    /* renamed from: d, reason: collision with root package name */
    public String f1762d;
    public int dq;
    private s iw;
    private String mn;
    public String ox;
    public JSONObject p;
    private iw s;

    public mn(s sVar) {
        this.iw = sVar;
        this.dq = sVar.dq();
        this.f1762d = sVar.d();
        this.ox = sVar.ox();
        this.p = sVar.s().ij();
        this.mn = sVar.p();
        if (com.bytedance.sdk.component.adexpress.p.d() == 1) {
            this.s = sVar.mn();
        } else {
            this.s = sVar.s();
        }
        if (com.bytedance.sdk.component.adexpress.p.dq()) {
            this.s = sVar.s();
        }
    }

    public static float[] d(String str) {
        String[] split = str.substring(str.indexOf("(") + 1, str.indexOf(")")).split(",");
        return (split == null || split.length != 4) ? new float[]{TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT} : new float[]{Float.parseFloat(split[0]), Float.parseFloat(split[1]), Float.parseFloat(split[2]), Float.parseFloat(split[3])};
    }

    public static int dq(String str) {
        String[] split;
        if (TextUtils.isEmpty(str)) {
            return -16777216;
        }
        if (str.equals("transparent")) {
            return 0;
        }
        if (str.charAt(0) == '#' && str.length() == 7) {
            return Color.parseColor(str);
        }
        if (str.charAt(0) == '#' && str.length() == 9) {
            return Color.parseColor(str);
        }
        if (str.startsWith("rgba") && (split = str.substring(str.indexOf("(") + 1, str.indexOf(")")).split(",")) != null) {
            try {
                if (split.length == 4) {
                    return (((int) ((Float.parseFloat(split[3]) * 255.0f) + 0.5f)) << 24) | (((int) Float.parseFloat(split[0])) << 16) | (((int) Float.parseFloat(split[1])) << 8) | ((int) Float.parseFloat(split[2]));
                }
            } catch (NumberFormatException unused) {
                return 0;
            }
        }
        return -16777216;
    }

    private boolean hf() {
        if (com.bytedance.sdk.component.adexpress.p.dq()) {
            return false;
        }
        return (!TextUtils.isEmpty(this.f1762d) && this.f1762d.contains("adx:")) || no.d();
    }

    private boolean yo() {
        return (com.bytedance.sdk.component.adexpress.p.dq() && (this.iw.getType().contains("logo-union") || this.iw.getType().contains("logounion") || this.iw.getType().contains("logoad"))) || "logo-union".equals(this.iw.getType()) || "logounion".equals(this.iw.getType()) || "logoad".equals(this.iw.getType());
    }

    public double bl() {
        return this.s.ia();
    }

    public double bu() {
        return this.s.ce();
    }

    public int by() {
        return this.s.nt();
    }

    public int c() {
        return this.s.kk();
    }

    public String cc() {
        return this.dq == 29 ? this.ox : "";
    }

    public int cd() {
        return this.s.sc();
    }

    public String ce() {
        return this.s.o();
    }

    public String cv() {
        return this.s.n();
    }

    public int d() {
        return (int) this.s.fw();
    }

    public int dc() {
        return this.s.ir();
    }

    public int dq() {
        return (int) this.s.q();
    }

    public void dq(float f2) {
        this.s.dq(f2);
    }

    public boolean dq(int i) {
        s sVar = this.iw;
        if (sVar == null) {
            return false;
        }
        if (i == 1) {
            this.s = sVar.mn();
        } else {
            this.s = sVar.s();
        }
        return this.s != null;
    }

    public String ds() {
        return this.s.jn();
    }

    public String e() {
        return this.s.rp();
    }

    public String er() {
        return this.s.j();
    }

    public int f() {
        return dq(this.s.kx());
    }

    public double fd() {
        return this.s.c();
    }

    public float fw() {
        return this.s.ig();
    }

    public int gh() {
        return this.s.ip();
    }

    public int gx() {
        return this.s.jv();
    }

    public int h() {
        String wn = this.s.wn();
        if ("skip-with-time-skip-btn".equals(this.iw.getType()) || "skip".equals(this.iw.getType()) || TextUtils.equals("skip-with-countdowns-skip-btn", this.iw.getType())) {
            return 6;
        }
        if (!"skip-with-time-countdown".equals(this.iw.getType()) && !"skip-with-time".equals(this.iw.getType())) {
            if (this.dq == 10 && TextUtils.equals(this.s.j(), "click")) {
                return 5;
            }
            if (yo() && hf()) {
                return 0;
            }
            if (yo()) {
                return 7;
            }
            if ("feedback-dislike".equals(this.iw.getType())) {
                return 3;
            }
            if (!TextUtils.isEmpty(wn) && !wn.equals(LiveConfigKey.NONE)) {
                if (wn.equals(MediaFormat.KEY_VIDEO) || (this.iw.dq() == 7 && TextUtils.equals(wn, "normal"))) {
                    return (com.bytedance.sdk.component.adexpress.p.dq() && this.iw.s() != null && this.iw.s().xx()) ? 11 : 4;
                }
                if (wn.equals("normal")) {
                    return 1;
                }
                return (wn.equals("creative") || "slide".equals(this.s.j())) ? 2 : 0;
            }
        }
        return 0;
    }

    public boolean ha() {
        return this.s.op();
    }

    public String i() {
        return this.s.wp();
    }

    public int ia() {
        String i = this.s.i();
        if ("left".equals(i)) {
            return 17;
        }
        if ("center".equals(i)) {
            return 4;
        }
        return "right".equals(i) ? 3 : 2;
    }

    public String ig() {
        return this.mn;
    }

    public String ij() {
        return this.s.wq();
    }

    public int io() {
        return this.s.bf();
    }

    public int ir() {
        return this.s.s();
    }

    public String iw() {
        return this.dq == 0 ? !TextUtils.isEmpty(this.f1762d) ? this.f1762d : this.p.optString(com.bytedance.sdk.component.adexpress.p.mn.p(com.bytedance.sdk.component.adexpress.p.getContext())) : "";
    }

    public int j() {
        return this.s.io();
    }

    public int ji() {
        return dq(this.s.k());
    }

    public boolean jo() {
        return this.s.ux();
    }

    public int jw() {
        return this.s.u();
    }

    public float jy() {
        return this.s.no();
    }

    public int k() {
        return this.s.l();
    }

    public int kk() {
        int ia = ia();
        if (ia == 4) {
            return 17;
        }
        return ia == 3 ? 8388613 : 8388611;
    }

    public long kx() {
        return this.s.fq();
    }

    public int l() {
        return this.s.mn();
    }

    public boolean le() {
        return this.s.ob();
    }

    public int m() {
        return this.s.xj();
    }

    public List<String> mc() {
        return this.s.oh();
    }

    public int mn() {
        return dq(this.s.le());
    }

    public double mp() {
        if (this.dq == 11) {
            try {
                return !com.bytedance.sdk.component.adexpress.p.dq() ? (int) r0 : Double.parseDouble(this.f1762d);
            } catch (NumberFormatException unused) {
            }
        }
        return -1.0d;
    }

    public int n() {
        return this.s.ox();
    }

    public int nh() {
        return this.s.pa();
    }

    public String no() {
        int i = this.dq;
        return (i == 1 || i == 29) ? this.f1762d : "";
    }

    public String o() {
        int i = this.dq;
        return (i == 2 || i == 13) ? this.f1762d : "";
    }

    public boolean ob() {
        return this.s.bx();
    }

    public int op() {
        return this.s.d();
    }

    public int ox() {
        return (int) this.s.jy();
    }

    public int p() {
        return (int) this.s.f();
    }

    public int pa() {
        return this.s.x();
    }

    public double q() {
        return this.s.gh();
    }

    public boolean r() {
        return this.s.hy();
    }

    public float s() {
        return this.s.cd();
    }

    public int t() {
        return this.s.zi();
    }

    public int u() {
        return this.s.p();
    }

    public int uh() {
        return this.s.hf();
    }

    public String v() {
        return this.s.ny();
    }

    public String vf() {
        return this.s.er();
    }

    public boolean vw() {
        return this.s.mp();
    }

    public String wi() {
        return this.s.e();
    }

    public boolean wn() {
        return this.s.z();
    }

    public String wp() {
        return this.s.wn();
    }

    public int ws() {
        return this.s.a();
    }

    public String xi() {
        return this.s.b();
    }

    public boolean xv() {
        return this.s.tv();
    }

    public boolean xz() {
        return this.s.tv();
    }

    public String yy() {
        return this.s.bl();
    }

    public boolean z() {
        return this.s.tl();
    }
}
