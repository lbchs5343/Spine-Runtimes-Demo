package g;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final class gfg extends androidx.recyclerview.widget.p {
    public final TextView ak;
    public final TextView al;
    public final /* synthetic */ la am;
    public final ImageView an;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gfg(la laVar, View view) {
        super(view);
        this.am = laVar;
        this.al = (TextView) view.findViewById(R.id.text);
        this.ak = (TextView) view.findViewById(R.id.desc);
        this.an = (ImageView) view.findViewById(R.id.action);
    }
}
