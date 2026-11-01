package g;

import android.view.View;
import android.widget.TextView;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final class aam extends androidx.recyclerview.widget.p {
    public final TextView ak;
    public final TextView al;
    public final TextView am;

    public aam(View view) {
        super(view);
        View findViewById = view.findViewById(R.id.title);
        bff.e(findViewById, "findViewById(...)");
        this.al = (TextView) findViewById;
        View findViewById2 = view.findViewById(R.id.class_name);
        bff.e(findViewById2, "findViewById(...)");
        this.ak = (TextView) findViewById2;
        View findViewById3 = view.findViewById(R.id.time);
        bff.e(findViewById3, "findViewById(...)");
        this.am = (TextView) findViewById3;
    }
}
