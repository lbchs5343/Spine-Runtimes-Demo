package g;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final class fsk implements ekf {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f17335c;

    public /* synthetic */ fsk(int i) {
        this.f17335c = i;
    }

    private final void d(androidx.recyclerview.widget.p pVar, cng cngVar) {
    }

    private final void e(androidx.recyclerview.widget.p pVar, cng cngVar) {
    }

    @Override // g.ekf
    public final androidx.recyclerview.widget.p a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        switch (this.f17335c) {
            case 0:
                return new bpq(layoutInflater.inflate(R.layout.view_divider, viewGroup, false));
            case 1:
                return new bpq(layoutInflater.inflate(R.layout.view_space, viewGroup, false));
            case 2:
                View inflate = layoutInflater.inflate(R.layout.item_title, viewGroup, false);
                erb erbVar = new erb(inflate);
                erbVar.ak = (TextView) inflate.findViewById(R.id.title);
                return erbVar;
            default:
                View inflate2 = layoutInflater.inflate(R.layout.item_ui_standard_title, viewGroup, false);
                cgx cgxVar = new cgx(inflate2);
                cgxVar.al = (TextView) inflate2.findViewById(R.id.dpi_name);
                cgxVar.ak = (TextView) inflate2.findViewById(R.id.info);
                return cgxVar;
        }
    }

    @Override // g.ekf
    public final void b(androidx.recyclerview.widget.p pVar, cng cngVar) {
        switch (this.f17335c) {
            case 0:
            case 1:
                break;
            case 2:
                ((erb) pVar).ak.setText(((byz) cngVar).f12479d);
                break;
            default:
                cgx cgxVar = (cgx) pVar;
                ahx ahxVar = (ahx) cngVar;
                TextView textView = cgxVar.ak;
                cgxVar.al.setText(ahxVar.f10248e);
                int i = ahxVar.f10247d;
                if (i <= 0) {
                    textView.setText("");
                    break;
                } else {
                    textView.setText("(" + Integer.toString(i) + "dp");
                    float f2 = ((float) i) / 160.0f;
                    int i2 = i / 160;
                    if (Float.compare(f2, i2) != 0) {
                        textView.append(" " + erl.ax(f2, 1) + "x)");
                        break;
                    } else {
                        textView.append(" " + i2 + "x)");
                        break;
                    }
                }
        }
    }
}
