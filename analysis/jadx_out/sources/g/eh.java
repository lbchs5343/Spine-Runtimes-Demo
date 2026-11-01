package g;

import android.content.Context;
import android.content.IntentFilter;
import android.location.Location;
import android.location.LocationManager;
import android.os.PowerManager;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import java.util.Calendar;

/* loaded from: classes.dex */
public final class eh extends cgo {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ dre f15533b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f15534c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f15535d = 0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public eh(dre dreVar, Context context) {
        super(dreVar);
        this.f15533b = dreVar;
        this.f15534c = (PowerManager) context.getApplicationContext().getSystemService("power");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public eh(dre dreVar, dzh dzhVar) {
        super(dreVar);
        this.f15533b = dreVar;
        this.f15534c = dzhVar;
    }

    @Override // g.cgo
    public final IntentFilter e() {
        switch (this.f15535d) {
            case 0:
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
                return intentFilter;
            default:
                IntentFilter intentFilter2 = new IntentFilter();
                intentFilter2.addAction("android.intent.action.TIME_SET");
                intentFilter2.addAction("android.intent.action.TIMEZONE_CHANGED");
                intentFilter2.addAction("android.intent.action.TIME_TICK");
                return intentFilter2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00d9  */
    @Override // g.cgo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int f() {
        Location location;
        boolean z;
        long j;
        switch (this.f15535d) {
            case 0:
                return cek.a((PowerManager) this.f15534c) ? 2 : 1;
            default:
                dzh dzhVar = (dzh) this.f15534c;
                fww fwwVar = (fww) dzhVar.f15122g;
                LocationManager locationManager = (LocationManager) dzhVar.f15121f;
                if (fwwVar.f17552b > System.currentTimeMillis()) {
                    z = fwwVar.f17551a;
                } else {
                    Context context = (Context) dzhVar.i;
                    Location location2 = null;
                    if (eg.p(context, "android.permission.ACCESS_COARSE_LOCATION") == 0) {
                        if (locationManager.isProviderEnabled("network")) {
                            location = locationManager.getLastKnownLocation("network");
                            if (eg.p(context, "android.permission.ACCESS_FINE_LOCATION") == 0) {
                                try {
                                    if (locationManager.isProviderEnabled("gps")) {
                                        location2 = locationManager.getLastKnownLocation("gps");
                                    }
                                } catch (Exception unused) {
                                }
                            }
                            if (location2 != null || location == null ? location2 != null : location2.getTime() > location.getTime()) {
                                location = location2;
                            }
                            if (location == null) {
                                long currentTimeMillis = System.currentTimeMillis();
                                if (gh.f18139a == null) {
                                    gh.f18139a = new gh();
                                }
                                gh ghVar = gh.f18139a;
                                ghVar.e(location.getLatitude(), location.getLongitude(), currentTimeMillis - AdBaseConstants.DEFAULT_DELAY_TIMESTAMP);
                                ghVar.e(location.getLatitude(), location.getLongitude(), currentTimeMillis);
                                z = ghVar.f18142d == 1;
                                long j2 = ghVar.f18141c;
                                long j3 = ghVar.f18140b;
                                ghVar.e(location.getLatitude(), location.getLongitude(), currentTimeMillis + AdBaseConstants.DEFAULT_DELAY_TIMESTAMP);
                                long j4 = ghVar.f18141c;
                                if (j2 == -1 || j3 == -1) {
                                    j = currentTimeMillis + 43200000;
                                } else {
                                    if (currentTimeMillis > j3) {
                                        j2 = j4;
                                    } else if (currentTimeMillis > j2) {
                                        j2 = j3;
                                    }
                                    j = j2 + 60000;
                                }
                                fwwVar.f17551a = z;
                                fwwVar.f17552b = j;
                            } else {
                                int i = Calendar.getInstance().get(11);
                                if (i < 6 || i >= 22) {
                                    z = true;
                                }
                            }
                        }
                    }
                    location = null;
                    if (eg.p(context, "android.permission.ACCESS_FINE_LOCATION") == 0) {
                    }
                    if (location2 != null) {
                    }
                    location = location2;
                    if (location == null) {
                    }
                }
                return z ? 2 : 1;
        }
    }

    @Override // g.cgo
    public final void g() {
        switch (this.f15535d) {
            case 0:
                this.f15533b.cs(true, true);
                break;
            default:
                this.f15533b.cs(true, true);
                break;
        }
    }
}
