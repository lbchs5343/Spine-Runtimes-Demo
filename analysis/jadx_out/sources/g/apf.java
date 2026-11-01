package g;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;

/* loaded from: classes3.dex */
public final class apf implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f10613a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f10614b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f10615c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f10616d;

    public apf(Context context, String str, boolean z, boolean z2) {
        this.f10615c = context;
        this.f10616d = str;
        this.f10613a = z;
        this.f10614b = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        esy esyVar = ti.f20033a.z;
        AlertDialog.Builder af = esy.af(this.f10615c);
        af.setMessage(this.f10616d);
        if (this.f10613a) {
            af.setTitle("Error");
        } else {
            af.setTitle("Info");
        }
        if (this.f10614b) {
            af.setNeutralButton("Dismiss", (DialogInterface.OnClickListener) null);
        } else {
            af.setPositiveButton("Learn More", new fgw(7, this));
            af.setNegativeButton("Dismiss", (DialogInterface.OnClickListener) null);
        }
        af.create().show();
    }
}
