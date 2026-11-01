package g;

import android.text.Editable;

/* loaded from: classes3.dex */
public final class dse extends y {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zq f14700a;

    public dse(zq zqVar) {
        this.f14700a = zqVar;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        this.f14700a.ag().l();
    }

    @Override // g.y, android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.f14700a.ag().af();
    }
}
