package g;

import android.view.View;

/* loaded from: classes3.dex */
public final /* synthetic */ class ecn implements View.OnFocusChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15314a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ bhb f15315b;

    public /* synthetic */ ecn(bhb bhbVar, int i) {
        this.f15314a = i;
        this.f15315b = bhbVar;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z) {
        switch (this.f15314a) {
            case 0:
                azm azmVar = (azm) this.f15315b;
                azmVar.r(azmVar.m());
                break;
            default:
                chp chpVar = (chp) this.f15315b;
                chpVar.f12887e = z;
                chpVar.ah();
                if (!z) {
                    chpVar.am(false);
                    chpVar.i = false;
                    break;
                }
                break;
        }
    }
}
