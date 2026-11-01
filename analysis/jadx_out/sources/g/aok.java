package g;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.widget.LinearLayout;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public final class aok extends dlv {
    public float aa;

    /* renamed from: ab, reason: collision with root package name */
    public int f10574ab;
    public int ac;
    public float w;
    public float y;

    /* renamed from: g, reason: collision with root package name */
    public static final int f10573g = Color.parseColor("#FFC642");

    /* renamed from: a, reason: collision with root package name */
    public static final int f10572a = Color.parseColor("#e3e3e4");

    public aok(Context context) {
        super(context, 0);
        this.f10574ab = f10573g;
        this.ac = f10572a;
        this.w = 4.0f;
        this.y = 20.0f;
    }

    @Override // g.dlv
    public final void dq(String str, String str2) {
        super.dq(str, str2);
        str.getClass();
        switch (str) {
            case "highLightColor":
            case "highlightColor":
                this.f10574ab = bff.ab(str2, -16777216);
                break;
            case "lowLightColor":
            case "lowlightColor":
                this.ac = bff.ab(str2, f10572a);
                break;
            case "gap":
                this.aa = byh.au(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, str2);
                break;
            case "size":
                this.y = byh.au(20.0f, str2);
                break;
            case "score":
                this.w = byh.au(4.0f, str2);
                break;
        }
    }

    @Override // g.dlv
    public final View ox() {
        Context context = this.s;
        fls flsVar = new fls(context);
        flsVar.f17006b = context;
        LinearLayout linearLayout = new LinearLayout(context);
        flsVar.f17009e = linearLayout;
        LinearLayout linearLayout2 = new LinearLayout(context);
        flsVar.h = linearLayout2;
        linearLayout.setOrientation(0);
        linearLayout.setGravity(8388611);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(8388611);
        flsVar.f17005a = this;
        return flsVar;
    }

    @Override // g.dlv
    public final void p() {
        super.p();
        if (ji()) {
            ((fls) this.ia).i(this.w, this.f10574ab, this.ac, this.y, (int) this.aa);
        } else {
            ((fls) this.ia).i(this.w, this.f10574ab, this.ac, this.y, 5);
        }
    }
}
