package g;

import android.content.DialogInterface;

/* loaded from: classes.dex */
public final class gdc implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17917a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ guy f17918b;

    public /* synthetic */ gdc(guy guyVar, int i) {
        this.f17917a = i;
        this.f17918b = guyVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        switch (this.f17917a) {
            case 0:
                this.f17918b.onDenied("android.settings.action.MANAGE_OVERLAY_PERMISSION");
                break;
            default:
                fyt.g(this.f17918b, "android.settings.action.MANAGE_OVERLAY_PERMISSION", new cc(0, this));
                break;
        }
    }
}
