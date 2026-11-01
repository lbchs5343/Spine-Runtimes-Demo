package g;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import cn.trinea.android.developertools.R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* loaded from: classes.dex */
public final class hdo implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final Object f19281a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f19282b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f19283c;

    /* renamed from: d, reason: collision with root package name */
    public final int f19284d;

    public hdo(BottomSheetBehavior bottomSheetBehavior, View view, int i) {
        this.f19283c = 2;
        this.f19282b = bottomSheetBehavior;
        this.f19281a = view;
        this.f19284d = i;
    }

    public /* synthetic */ hdo(Object obj, int i, Object obj2, int i2) {
        this.f19283c = i2;
        this.f19282b = obj;
        this.f19284d = i;
        this.f19281a = obj2;
    }

    public /* synthetic */ hdo(Object obj, Object obj2, int i, int i2) {
        this.f19283c = i2;
        this.f19281a = obj;
        this.f19282b = obj2;
        this.f19284d = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        bez bezVar;
        switch (this.f19283c) {
            case 0:
                String[] strArr = (String[]) this.f19281a;
                int[] iArr = new int[strArr.length];
                Activity activity = (Activity) this.f19282b;
                PackageManager packageManager = activity.getPackageManager();
                String packageName = activity.getPackageName();
                int length = strArr.length;
                for (int i = 0; i < length; i++) {
                    iArr[i] = packageManager.checkPermission(strArr[i], packageName);
                }
                ((aaz) activity).onRequestPermissionsResult(this.f19284d, strArr, iArr);
                break;
            case 1:
                ((TextView) this.f19281a).setTypeface((Typeface) this.f19282b, this.f19284d);
                break;
            case 2:
                ((BottomSheetBehavior) this.f19282b).cl((View) this.f19281a, this.f19284d, false);
                break;
            case 3:
                zo zoVar = (zo) this.f19282b;
                Object obj = ((aoy) this.f19281a).h;
                String str = (String) zoVar.f35c.get(Integer.valueOf(this.f19284d));
                if (str != null) {
                    dnr dnrVar = (dnr) zoVar.f34b.get(str);
                    if (dnrVar != null && (bezVar = dnrVar.f14488a) != null) {
                        if (zoVar.f33a.remove(str)) {
                            bezVar.v(obj);
                            break;
                        }
                    } else {
                        zoVar.f39g.remove(str);
                        zoVar.f36d.put(str, obj);
                        break;
                    }
                }
                break;
            case 4:
                ((zo) this.f19282b).j(this.f19284d, 0, new Intent().setAction("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION", (IntentSender.SendIntentException) this.f19281a));
                break;
            case 5:
                ((cfo) this.f19282b).f12793c.onNavigationEvent(this.f19284d, (Bundle) this.f19281a);
                break;
            case 6:
                View findViewById = ((elf) this.f19282b).findViewById(R.id.snackbar_layout);
                int i2 = this.f19284d;
                afo.az(findViewById, findViewById.getResources().getText((i2 == 1201 || i2 == 1991) ? R.string.p_install_gp : i2 == 1202 ? R.string.p_start_gp : -1), -2, findViewById.getResources().getText(R.string.retry), (get) this.f19281a, false);
                break;
            default:
                ((jf) this.f19281a).o(this.f19284d, (Intent) this.f19282b);
                break;
        }
    }
}
