package g;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final class fhc extends androidx.recyclerview.widget.p {
    public final TextView ak;
    public final ImageView al;
    public final TextView am;

    public fhc(View view) {
        super(view);
        View findViewById = view.findViewById(R.id.icon);
        bff.e(findViewById, "findViewById(...)");
        this.al = (ImageView) findViewById;
        View findViewById2 = view.findViewById(R.id.app_name);
        bff.e(findViewById2, "findViewById(...)");
        this.ak = (TextView) findViewById2;
        View findViewById3 = view.findViewById(R.id.package_name);
        bff.e(findViewById3, "findViewById(...)");
        this.am = (TextView) findViewById3;
    }
}
