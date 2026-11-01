package g;

import android.graphics.Paint;
import android.text.TextUtils;
import android.view.View;

/* loaded from: classes.dex */
public final class um extends dlv {

    /* renamed from: a, reason: collision with root package name */
    public int f20100a;

    /* renamed from: g, reason: collision with root package name */
    public int f20101g;
    public int w;

    @Override // g.dlv
    public final void dq(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        super.dq(str, str2);
        str.getClass();
        switch (str) {
            case "dislikeColor":
                this.f20101g = bff.ab(str2, -16777216);
                break;
            case "dislikeWidth":
                this.w = (int) dxo.f(this.s, Integer.parseInt(str2));
                break;
            case "dislikeFillColor":
                this.f20100a = bff.ab(str2, -16777216);
                break;
        }
    }

    @Override // g.dlv
    public final View ox() {
        bif bifVar = new bif(this.s);
        Paint paint = new Paint();
        bifVar.f11638e = paint;
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        bifVar.f11634a = paint2;
        paint2.setAntiAlias(true);
        Paint paint3 = new Paint();
        bifVar.i = paint3;
        paint3.setAntiAlias(true);
        bifVar.setBackgroundColor(0);
        bifVar.f11639f = this;
        return bifVar;
    }

    @Override // g.dlv
    public final void p() {
        super.p();
        ((bif) this.ia).setRadius(this.gx);
        ((bif) this.ia).setStrokeWidth((int) this.cv);
        ((bif) this.ia).setDislikeColor(this.f20101g);
        ((bif) this.ia).setStrokeColor(this.dc);
        ((bif) this.ia).setDislikeWidth(this.w);
        ((bif) this.ia).setBgColor(this.f20100a);
    }
}
