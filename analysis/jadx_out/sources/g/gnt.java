package g;

import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.pm.ServiceInfo;
import android.util.Log;
import cn.trinea.android.developertools.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final /* synthetic */ class gnt implements DialogInterface.OnMultiChoiceClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c.e.a f18475a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f18476b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean[] f18477c;

    public /* synthetic */ gnt(c.e.a aVar, ArrayList arrayList, boolean[] zArr) {
        this.f18475a = aVar;
        this.f18476b = arrayList;
        this.f18477c = zArr;
    }

    @Override // android.content.DialogInterface.OnMultiChoiceClickListener
    public final void onClick(DialogInterface dialogInterface, int i, boolean z) {
        c.e.a aVar = this.f18475a;
        ArrayList arrayList = this.f18476b;
        int i2 = c.e.a.f387d;
        try {
            aVar.getPackageManager().setComponentEnabledSetting(new ComponentName(aVar, ((ServiceInfo) arrayList.get(i)).name), z ? 1 : 2, 1);
        } catch (RuntimeException e2) {
            boolean z2 = !z;
            this.f18477c[i] = z2;
            ((fpl) dialogInterface).j.s.setItemChecked(i, z2);
            Log.e("SettingActivity", "Cannot update quick settings tiles", e2);
            gm.f(aVar, R.string.quick_settings_tiles_update_failed);
        }
    }
}
