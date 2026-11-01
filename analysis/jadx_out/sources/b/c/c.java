package b.c;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import cn.trinea.android.developertools.R;
import g.acr;
import g.acw;
import g.byz;
import g.dxn;
import g.erl;
import g.ert;
import g.gm;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public class c extends dxn {
    @Override // g.cms, g.dms, androidx.fragment.app.u, androidx.activity.ComponentActivity, g.emf, android.app.Activity
    public final void onCreate(Bundle bundle) {
        ComponentName component;
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent != null && "android.intent.action.CREATE_SHORTCUT".equals(intent.getAction()) && (component = intent.getComponent()) != null) {
            String className = component.getClassName();
            if (!TextUtils.isEmpty(className)) {
                if (acr.y == null || acr.f9989b) {
                    synchronized (acr.class) {
                        try {
                            if (acr.y != null) {
                                if (acr.f9989b) {
                                }
                            }
                            acr.f9989b = false;
                            acr.y = new HashMap();
                            Iterator it = ((ArrayList) acr.az(this)).iterator();
                            while (it.hasNext()) {
                                byz byzVar = (byz) it.next();
                                if (byzVar != null && !acw.u(byzVar.f12476a)) {
                                    Iterator it2 = byzVar.f12476a.iterator();
                                    while (it2.hasNext()) {
                                        ert ertVar = (ert) it2.next();
                                        if (ertVar != null) {
                                            String str = ertVar.v;
                                            if (!TextUtils.isEmpty(str)) {
                                                acr.y.put(str, ertVar.q);
                                            }
                                        }
                                    }
                                }
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                String str2 = (String) acr.y.get(className);
                ert ae = TextUtils.isEmpty(str2) ? null : acr.ae(this, str2);
                if (ae != null) {
                    Intent intent2 = new Intent();
                    String z = ae.z(this);
                    int i = ae.f16055d;
                    Intent aa = erl.aa(this, ae, "op_source_short_desk_widget");
                    intent2.putExtra("android.intent.extra.shortcut.NAME", z);
                    intent2.putExtra("android.intent.extra.shortcut.INTENT", aa);
                    intent2.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(this, i));
                    setResult(-1, intent2);
                    finish();
                    return;
                }
            }
        }
        gm.c(this, R.string.error_tool_need_buy);
        setResult(0);
        finish();
    }
}
