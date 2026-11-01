package g;

import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final class eas extends csm {
    public static final /* synthetic */ int h = 0;
    public final Handler i;
    public final /* synthetic */ int j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public eas(efx efxVar, boolean z, eqi eqiVar, int i) {
        super(efxVar, z);
        this.j = i;
        this.i = eqiVar;
    }

    @Override // g.csm
    public final void c(bcq bcqVar, auj aujVar) {
        ViewGroup viewGroup = bcqVar.al;
        TextView textView = bcqVar.am;
        viewGroup.setOnClickListener(k(aujVar));
        ViewGroup viewGroup2 = bcqVar.al;
        viewGroup2.setOnLongClickListener(new esb());
        ImageView imageView = bcqVar.ak;
        imageView.setTag(aujVar.h);
        imageView.setImageDrawable(null);
        csm.f13437d.execute(new eax(this, aujVar, bcqVar, 0));
        TextView textView2 = bcqVar.an;
        textView2.setText(aujVar.j);
        boolean z = this.f13439f;
        if (z) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
            textView.setText(TextUtils.isEmpty(null) ? aujVar.h : null);
        }
        viewGroup2.setOnClickListener(k(aujVar));
        viewGroup2.setOnLongClickListener(new esb());
        imageView.setImageDrawable(aujVar.l(this.f13438e, true));
        textView2.setText(aujVar.j);
        if (z) {
            textView.setVisibility(8);
        }
        textView.setVisibility(0);
        if (!TextUtils.isEmpty(null)) {
            textView.setText((CharSequence) null);
            return;
        }
        switch (this.j) {
            case 0:
                bcqVar.am.setText(TextUtils.isEmpty(aujVar.f10868d) ? this.f13438e.getString(R.string.apk_puller) : aujVar.f10868d);
                break;
            case 1:
                bcqVar.am.setText(TextUtils.isEmpty(aujVar.f10868d) ? this.f13438e.getString(R.string.apk_puller) : aujVar.f10868d);
                break;
            default:
                bcqVar.am.setText(TextUtils.isEmpty(aujVar.f10870f) ? this.f13438e.getString(R.string.so_puller) : aujVar.f10870f.replace(";", "\n"));
                break;
        }
    }

    public View.OnClickListener k(auj aujVar) {
        switch (this.j) {
            case 1:
                return new anh(this, 3, aujVar);
            default:
                return new anh(this, 7, aujVar);
        }
    }
}
