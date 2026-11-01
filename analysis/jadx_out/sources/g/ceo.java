package g;

import android.content.Intent;
import android.view.View;
import android.widget.Switch;

/* loaded from: classes.dex */
public final class ceo implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ hcn f12746a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f12747b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Switch f12748c;

    public /* synthetic */ ceo(hcn hcnVar, Switch r2, int i) {
        this.f12747b = i;
        this.f12746a = hcnVar;
        this.f12748c = r2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f12747b) {
            case 0:
                cro.af(this.f12746a.f19229c, "datetrinea", this.f12748c.isChecked());
                break;
            case 1:
                hcn hcnVar = this.f12746a;
                cro.af(hcnVar.f19229c, "immature", this.f12748c.isChecked());
                hcnVar.getActivity().finish();
                fzn.l(hcnVar.getActivity().getApplicationContext()).q(new Intent("finish"));
                break;
            default:
                Switch r5 = this.f12748c;
                boolean isChecked = r5.isChecked();
                hcn hcnVar2 = this.f12746a;
                if (isChecked) {
                    cro.af(hcnVar2.f19229c, "setting_sns", true);
                }
                cro.af(hcnVar2.f19229c, "al_or_ways", r5.isChecked());
                hcnVar2.getActivity().finish();
                fzn.l(hcnVar2.getActivity().getApplicationContext()).q(new Intent("finish"));
                break;
        }
    }
}
