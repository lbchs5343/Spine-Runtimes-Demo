package g;

import android.content.DialogInterface;

/* loaded from: classes.dex */
public final class dwl implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14943a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ fzn f14944b;

    public /* synthetic */ dwl(fzn fznVar, int i) {
        this.f14943a = i;
        this.f14944b = fznVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        switch (this.f14943a) {
            case 0:
                this.f14944b.t();
                break;
            default:
                this.f14944b.ai();
                break;
        }
    }
}
