package g;

import android.content.Context;
import android.text.TextUtils;
import android.widget.ImageView;

/* loaded from: classes.dex */
public abstract class ajn extends fde {
    private int p;

    public ajn(Context context) {
        super(context);
        this.p = -16777216;
    }

    @Override // g.fde, g.dlv
    public void dq(String str, String str2) {
        super.dq(str, str2);
        str.getClass();
        if (str.equals("textColor")) {
            this.p = bff.ab(str2, -16777216);
        }
    }

    public abstract String mn(String str);

    @Override // g.fde, g.dlv
    public void p() {
        String mn = mn(((fde) this).dq);
        ((fde) this).dq = TextUtils.isEmpty(mn) ? "" : "local://".concat(String.valueOf(mn));
        super.p();
        ((cdf) this.ia).setColorFilter(this.p);
        ((cdf) this.ia).setScaleType(ImageView.ScaleType.FIT_CENTER);
    }
}
