package g;

import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public final class bio extends ehj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11666a;

    public /* synthetic */ bio(int i) {
        this.f11666a = i;
    }

    @Override // g.ehj
    public final Intent b(Context context, Object obj) {
        Bundle bundleExtra;
        switch (this.f11666a) {
            case 0:
                String[] strArr = (String[]) obj;
                bff.p(strArr, "input");
                Intent putExtra = new Intent("androidx.activity.result.contract.action.REQUEST_PERMISSIONS").putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr);
                bff.e(putExtra, "Intent(ACTION_REQUEST_PE…EXTRA_PERMISSIONS, input)");
                return putExtra;
            case 1:
                Intent intent = (Intent) obj;
                bff.p(intent, "input");
                return intent;
            case 2:
                czn cznVar = (czn) obj;
                bff.p(cznVar, "input");
                Intent putExtra2 = new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", cznVar);
                bff.e(putExtra2, "Intent(ACTION_INTENT_SEN…NT_SENDER_REQUEST, input)");
                return putExtra2;
            default:
                czn cznVar2 = (czn) obj;
                Intent intent2 = new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST");
                Intent fillInIntent = cznVar2.getFillInIntent();
                if (fillInIntent != null && (bundleExtra = fillInIntent.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) != null) {
                    intent2.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundleExtra);
                    fillInIntent.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                    if (fillInIntent.getBooleanExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", false)) {
                        IntentSender intentSender = cznVar2.getIntentSender();
                        bff.p(intentSender, "intentSender");
                        cznVar2 = new czn(intentSender, null, cznVar2.getFlagsMask(), cznVar2.getFlagsValues());
                    }
                }
                intent2.putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", cznVar2);
                if (androidx.fragment.app.v.ao(2)) {
                    intent2.toString();
                }
                return intent2;
        }
    }

    @Override // g.ehj
    public aoy c(Context context, Object obj) {
        switch (this.f11666a) {
            case 0:
                String[] strArr = (String[]) obj;
                bff.p(strArr, "input");
                if (strArr.length == 0) {
                    return new aoy(dyq.f15095a);
                }
                for (String str : strArr) {
                    if (eyt.am(context, str) != 0) {
                        return null;
                    }
                }
                int av = fhj.av(strArr.length);
                if (av < 16) {
                    av = 16;
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap(av);
                for (String str2 : strArr) {
                    ger gerVar = new ger(str2, Boolean.TRUE);
                    linkedHashMap.put(gerVar.d(), gerVar.a());
                }
                return new aoy(linkedHashMap);
            default:
                return super.c(context, obj);
        }
    }

    @Override // g.ehj
    public final Object d(int i, Intent intent) {
        switch (this.f11666a) {
            case 0:
                if (i == -1 && intent != null) {
                    String[] stringArrayExtra = intent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
                    int[] intArrayExtra = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
                    if (intArrayExtra != null && stringArrayExtra != null) {
                        ArrayList arrayList = new ArrayList(intArrayExtra.length);
                        for (int i2 : intArrayExtra) {
                            arrayList.add(Boolean.valueOf(i2 == 0));
                        }
                        ArrayList b2 = fuv.b(stringArrayExtra);
                        Iterator it = b2.iterator();
                        Iterator it2 = arrayList.iterator();
                        ArrayList arrayList2 = new ArrayList(Math.min(bkk.a(b2), bkk.a(arrayList)));
                        while (it.hasNext() && it2.hasNext()) {
                            arrayList2.add(new ger(it.next(), it2.next()));
                        }
                        break;
                    }
                }
                break;
        }
        return new etm(i, intent);
    }
}
