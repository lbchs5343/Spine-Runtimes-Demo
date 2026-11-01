package g;

import android.telephony.CellInfo;
import android.telephony.CellInfoNr;
import android.telephony.CellInfoTdscdma;
import android.view.WindowInsets;

/* loaded from: classes.dex */
public abstract /* synthetic */ class aft {
    public static /* bridge */ /* synthetic */ CellInfoTdscdma ac(CellInfo cellInfo) {
        return (CellInfoTdscdma) cellInfo;
    }

    public static /* synthetic */ WindowInsets.Builder c() {
        return new WindowInsets.Builder();
    }

    public static /* bridge */ /* synthetic */ boolean e(CellInfo cellInfo) {
        return cellInfo instanceof CellInfoNr;
    }

    public static /* synthetic */ WindowInsets.Builder i(WindowInsets windowInsets) {
        return new WindowInsets.Builder(windowInsets);
    }

    public static /* bridge */ /* synthetic */ boolean n(CellInfo cellInfo) {
        return cellInfo instanceof CellInfoTdscdma;
    }

    public static /* bridge */ /* synthetic */ CellInfoNr q(CellInfo cellInfo) {
        return (CellInfoNr) cellInfo;
    }
}
