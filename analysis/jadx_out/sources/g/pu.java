package g;

import android.view.View;
import android.widget.TextView;
import cn.trinea.android.developertools.R;
import java.io.File;

/* loaded from: classes3.dex */
public final class pu extends androidx.recyclerview.widget.p implements View.OnClickListener {
    public final /* synthetic */ cuz ak;
    public final TextView al;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pu(cuz cuzVar, View view) {
        super(view);
        this.ak = cuzVar;
        view.setOnClickListener(this);
        this.al = (TextView) view.findViewById(R.id.name);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        cuz cuzVar = this.ak;
        File file = (File) cuzVar.o;
        if (!file.getPath().equals(new File("/").getPath()) && file.getParentFile() != null) {
            file = file.getParentFile();
        }
        cuzVar.ah(file);
    }
}
