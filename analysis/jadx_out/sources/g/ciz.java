package g;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public class ciz implements ekf {

    /* renamed from: e, reason: collision with root package name */
    public final Context f12960e;

    /* renamed from: f, reason: collision with root package name */
    public int f12961f = -1;

    /* renamed from: g, reason: collision with root package name */
    public boolean f12962g = false;

    /* renamed from: c, reason: collision with root package name */
    public boolean f12958c = false;

    /* renamed from: d, reason: collision with root package name */
    public int f12959d = -1;

    public ciz(Context context) {
        this.f12960e = context;
    }

    @Override // g.ekf
    public androidx.recyclerview.widget.p a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        ViewGroup.LayoutParams layoutParams;
        int i = this.f12961f;
        if (i == -1) {
            i = R.layout.item_key_value;
        }
        View inflate = layoutInflater.inflate(i, viewGroup, false);
        boolean z = this.f12962g;
        boolean z2 = this.f12958c;
        int i2 = this.f12959d;
        eds edsVar = new eds(inflate);
        TextView textView = (TextView) inflate.findViewById(R.id.key);
        edsVar.al = textView;
        if (i2 != -1 && (layoutParams = textView.getLayoutParams()) != null) {
            layoutParams.width = this.f12960e.getResources().getDimensionPixelSize(i2);
            textView.setLayoutParams(layoutParams);
        }
        TextView textView2 = (TextView) inflate.findViewById(R.id.value);
        edsVar.ak = textView2;
        if (z) {
            textView2.getPaint().setFlags(8);
            textView2.getPaint().setAntiAlias(true);
        }
        if (z2) {
            try {
                textView2.setTypeface(textView2.getTypeface(), 1);
            } catch (Exception unused) {
            }
        }
        return edsVar;
    }

    @Override // g.ekf
    public void b(androidx.recyclerview.widget.p pVar, cng cngVar) {
        eds edsVar = (eds) pVar;
        th thVar = (th) cngVar;
        edsVar.al.setText(thVar.f20031a);
        edsVar.ak.setText(thVar.f20032b);
    }
}
