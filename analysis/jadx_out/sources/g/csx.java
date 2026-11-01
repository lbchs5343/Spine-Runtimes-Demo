package g;

import android.content.DialogInterface;

/* loaded from: classes.dex */
public final class csx implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13456a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ dds f13457b;

    public /* synthetic */ csx(dds ddsVar, int i) {
        this.f13456a = i;
        this.f13457b = ddsVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        switch (this.f13456a) {
            case 0:
                dds ddsVar = this.f13457b;
                if (ddsVar != null) {
                    ddsVar.t();
                    break;
                }
                break;
            default:
                dds ddsVar2 = this.f13457b;
                if (ddsVar2 != null) {
                    ddsVar2.ai();
                    break;
                }
                break;
        }
    }
}
