package g;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public final class gsa implements eyj {

    /* renamed from: a, reason: collision with root package name */
    public HashMap f18672a;

    /* renamed from: b, reason: collision with root package name */
    public dlv f18673b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f18674c;

    public final bgh d(String str) {
        HashMap hashMap = this.f18672a;
        if (hashMap == null || hashMap.isEmpty() || TextUtils.isEmpty(str)) {
            return null;
        }
        return (bgh) hashMap.get(str);
    }

    public final void e(String str, List list) {
        dqk dqkVar;
        ans b2;
        if (list == null || list.isEmpty()) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            blw blwVar = (blw) it.next();
            if (blwVar != null) {
                dlv dlvVar = this.f18673b;
                String str2 = blwVar.f11807b;
                if (dqk.f14639a.contains(str2)) {
                    dqkVar = new dqk(dlvVar, str, blwVar, 1);
                } else {
                    str2.getClass();
                    if (str2.equals("update")) {
                        dqkVar = new dqk(dlvVar, str, blwVar, 2);
                    } else if (str2.equals("emit")) {
                        dqkVar = new dqk(dlvVar, str, blwVar, 0);
                        new CopyOnWriteArrayList();
                    } else {
                        dqkVar = null;
                    }
                }
                if (dqkVar != null) {
                    switch (dqkVar.f14641c) {
                        case 0:
                            HashMap hashMap = dqkVar.f14644f;
                            if (hashMap != null && hashMap.size() > 0) {
                                String str3 = (String) dqkVar.f14644f.get(abn.EXTRA_UA_APP_NAME);
                                dsk wn = dqkVar.f14643e.wn();
                                if (wn != null && (b2 = wn.b(str3)) != null) {
                                    CopyOnWriteArrayList copyOnWriteArrayList = b2.f10531a;
                                    if (!copyOnWriteArrayList.isEmpty()) {
                                        Iterator it2 = copyOnWriteArrayList.iterator();
                                        while (it2.hasNext()) {
                                            dus dusVar = (dus) it2.next();
                                            ((gsa) dusVar.dq).e(dusVar.iw, dusVar.ox.f13427b);
                                        }
                                        break;
                                    } else {
                                        break;
                                    }
                                }
                            }
                            break;
                        case 1:
                            dlv dlvVar2 = dqkVar.f14643e;
                            cyx i = dlvVar2.i();
                            if (i == null) {
                                break;
                            } else {
                                i.dq(dlvVar2, dqkVar.f14640b, dqkVar.f14642d);
                                break;
                            }
                        default:
                            dlv dlvVar3 = dqkVar.f14643e;
                            HashMap hashMap2 = dqkVar.f14644f;
                            if (hashMap2 != null && hashMap2.size() > 0) {
                                String str4 = (String) dqkVar.f14644f.get(TTDownloadField.TT_ID);
                                if (!TextUtils.isEmpty(str4)) {
                                    dlv d2 = dlvVar3.d(dlvVar3);
                                    if (d2 != null) {
                                        dqkVar.g(d2.ox(str4));
                                        break;
                                    } else {
                                        break;
                                    }
                                } else {
                                    dqkVar.g(dlvVar3);
                                    break;
                                }
                            }
                            break;
                    }
                }
            }
        }
    }
}
