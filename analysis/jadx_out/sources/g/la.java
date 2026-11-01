package g;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final class la implements ekf {

    /* renamed from: c, reason: collision with root package name */
    public final Context f19578c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f19579d;

    /* renamed from: e, reason: collision with root package name */
    public final String f19580e;

    /* renamed from: f, reason: collision with root package name */
    public String f19581f;

    public la(b.c.d dVar, int i) {
        this.f19579d = i;
        switch (i) {
            case 1:
                this.f19581f = "c.t.d.p.sf";
                this.f19578c = dVar;
                this.f19580e = dVar.getString(R.string.save);
                break;
            default:
                this.f19581f = "c.t.d.p.sf";
                this.f19578c = dVar;
                this.f19580e = dVar.getString(R.string.save);
                break;
        }
    }

    @Override // g.ekf
    public final androidx.recyclerview.widget.p a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        switch (this.f19579d) {
            case 0:
                return new gfg(this, layoutInflater.inflate(R.layout.item_group_action, viewGroup, false));
            default:
                return new ms(this, layoutInflater.inflate(R.layout.item_text_action, viewGroup, false));
        }
    }

    @Override // g.ekf
    public final void b(androidx.recyclerview.widget.p pVar, cng cngVar) {
        switch (this.f19579d) {
            case 0:
                gfg gfgVar = (gfg) pVar;
                gvs gvsVar = (gvs) cngVar;
                ImageView imageView = gfgVar.an;
                TextView textView = gfgVar.ak;
                gfgVar.al.setText(gvsVar.f18835b);
                String str = gvsVar.f18836c;
                if (TextUtils.isEmpty(str)) {
                    textView.setVisibility(8);
                } else {
                    textView.setVisibility(0);
                    textView.setText(str);
                }
                imageView.setVisibility(TextUtils.isEmpty(gvsVar.f18834a) ? 8 : 0);
                imageView.setOnClickListener(new anh(gfgVar, 5, gvsVar));
                ffb.ay(imageView, gfgVar.am.f19580e);
                break;
            default:
                ms msVar = (ms) pVar;
                gvs gvsVar2 = (gvs) cngVar;
                ImageView imageView2 = msVar.an;
                TextView textView2 = msVar.ak;
                msVar.al.setText(gvsVar2.f18835b);
                String str2 = gvsVar2.f18836c;
                if (TextUtils.isEmpty(str2)) {
                    textView2.setVisibility(8);
                } else {
                    textView2.setVisibility(0);
                    textView2.setText(str2);
                }
                imageView2.setVisibility(TextUtils.isEmpty(gvsVar2.f18834a) ? 8 : 0);
                imageView2.setOnClickListener(new anh(msVar, 8, gvsVar2));
                ffb.ay(imageView2, msVar.am.f19580e);
                break;
        }
    }
}
