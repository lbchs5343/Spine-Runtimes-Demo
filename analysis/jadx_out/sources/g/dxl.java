package g;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final class dxl implements ekf {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f15023c;

    /* renamed from: d, reason: collision with root package name */
    public int f15024d;

    /* renamed from: e, reason: collision with root package name */
    public Context f15025e;

    public /* synthetic */ dxl() {
        this.f15023c = 1;
    }

    public dxl(amy amyVar, Context context) {
        this.f15023c = 0;
        this.f15025e = amyVar;
        this.f15024d = -1;
    }

    @Override // g.ekf
    public final androidx.recyclerview.widget.p a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        switch (this.f15023c) {
            case 0:
                int i = this.f15024d;
                if (i == -1) {
                    i = R.layout.item_sub_key;
                }
                View inflate = layoutInflater.inflate(i, viewGroup, false);
                eql eqlVar = new eql(inflate);
                eqlVar.ak = (TextView) inflate.findViewById(R.id.key);
                return eqlVar;
            default:
                int i2 = this.f15024d;
                if (i2 == -1) {
                    i2 = R.layout.item_sub_key;
                }
                View inflate2 = layoutInflater.inflate(i2, viewGroup, false);
                dtr dtrVar = new dtr(inflate2);
                TextView textView = (TextView) inflate2.findViewById(R.id.key);
                dtrVar.ak = textView;
                textView.setTextIsSelectable(false);
                textView.setFocusable(false);
                textView.setFocusableInTouchMode(false);
                inflate2.setBackground(null);
                return dtrVar;
        }
    }

    @Override // g.ekf
    public final void b(androidx.recyclerview.widget.p pVar, cng cngVar) {
        switch (this.f15023c) {
            case 0:
                ((eql) pVar).ak.setText(((ce) cngVar).f12721a);
                String str = ((dpj) cngVar).f12721a;
                ((amy) this.f15025e).o((TextView) pVar.n.findViewById(R.id.key), str);
                break;
            default:
                dtr dtrVar = (dtr) pVar;
                Context context = this.f15025e;
                brq brqVar = (brq) cngVar;
                TextView textView = dtrVar.ak;
                textView.setText(brqVar.f12087a.name);
                anh anhVar = new anh(context, brqVar, 2);
                textView.setOnClickListener(anhVar);
                View view = dtrVar.n;
                view.setOnClickListener(anhVar);
                textView.setLongClickable(false);
                view.setLongClickable(false);
                break;
        }
    }
}
