package g;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final class bcq extends androidx.recyclerview.widget.p {
    public final ImageView ak;
    public final ViewGroup al;
    public final TextView am;
    public final TextView an;

    public bcq(View view) {
        super(view);
        this.al = (ViewGroup) view.findViewById(R.id.layout);
        this.ak = (ImageView) view.findViewById(R.id.icon);
        this.an = (TextView) view.findViewById(R.id.name);
        this.am = (TextView) view.findViewById(R.id.desc);
    }
}
