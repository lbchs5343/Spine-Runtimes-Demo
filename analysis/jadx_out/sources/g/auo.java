package g;

import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiActivity;

/* loaded from: classes3.dex */
public final class auo implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f10878a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f10879b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Intent f10880c;

    public /* synthetic */ auo(Intent intent, Object obj, int i) {
        this.f10879b = i;
        this.f10880c = intent;
        this.f10878a = obj;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [g.dmo, java.lang.Object] */
    public final void d() {
        switch (this.f10879b) {
            case 0:
                Intent intent = this.f10880c;
                if (intent != null) {
                    ((GoogleApiActivity) this.f10878a).startActivityForResult(intent, 2);
                    break;
                }
                break;
            default:
                Intent intent2 = this.f10880c;
                if (intent2 != null) {
                    this.f10878a.b(intent2, 2);
                    break;
                }
                break;
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        try {
            try {
                d();
            } catch (ActivityNotFoundException e2) {
                Log.e("DialogRedirect", true == Build.FINGERPRINT.contains("generic") ? "Failed to start resolution intent. This may occur when resolving Google Play services connection issues on emulators with Google APIs but not Google Play Store." : "Failed to start resolution intent.", e2);
            }
        } finally {
            dialogInterface.dismiss();
        }
    }
}
