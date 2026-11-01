package c.b;

import android.content.Context;
import android.text.TextUtils;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import g.acw;
import g.aif;
import g.anx;
import g.awf;
import g.bhr;
import g.bn;
import g.byh;
import g.cbf;
import g.cux;
import g.dea;
import g.dlb;
import g.dtw;
import g.dyd;
import g.erl;
import g.ffb;
import g.gbp;
import g.gez;
import g.hca;
import java.io.IOException;
import java.text.SimpleDateFormat;

/* loaded from: classes.dex */
public class d extends Worker {
    public d(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00e3, code lost:
    
        g.ffb.bn(getApplicationContext(), "doWork getUpdate failure, code is " + r3.getCode() + ", msg is" + r3.getMessage());
     */
    @Override // androidx.work.Worker
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final dea doWork() {
        anx c2;
        cbf cbfVar;
        bn bnVar;
        ffb.bn(getApplicationContext(), "doWork begin");
        Context applicationContext = getApplicationContext();
        long longValue = byh.an(applicationContext, "op_accessed_time", acw.k(applicationContext, "op_accessed_time", 0L).longValue()).longValue();
        SimpleDateFormat simpleDateFormat = dlb.f14354a;
        if (System.currentTimeMillis() - longValue <= 3600000) {
            Context applicationContext2 = getApplicationContext();
            StringBuilder l = awf.l(longValue, "doWork ignore1, lastAccessedTime is ", ", diff is: ");
            l.append(((System.currentTimeMillis() - longValue) / 1000) / 60);
            l.append("min");
            ffb.bn(applicationContext2, l.toString());
            return new aif();
        }
        gez e2 = hca.e(applicationContext);
        boolean z = false;
        if (e2 == null) {
            e2 = new gez(false);
        }
        gbp gbpVar = (gbp) dtw.c(applicationContext).r(gbp.class);
        String ab2 = cux.ab(applicationContext);
        String[] strArr = (String[]) e2.f18008e;
        try {
            c2 = gbpVar.a(longValue, ab2, strArr == null ? "" : TextUtils.join(",", strArr), dyd.az(applicationContext)).c();
        } catch (IOException e3) {
            erl.ac(e3);
            ffb.bn(getApplicationContext(), "doWork getUpdate exception, " + e3.toString());
        }
        if (c2 != null) {
            cbfVar = (cbf) c2.f10540b;
            if (cbfVar != null && cbfVar.getCode() == 0 && (bnVar = (bn) cbfVar.getData()) != null) {
                byh.bb(applicationContext, bnVar.getCount(), "c");
                ffb.bn(getApplicationContext(), "doWork found count is " + bnVar.getCount());
                byh.ay(applicationContext, "op_checked_time", Long.toString(System.currentTimeMillis()));
                z = true;
                ffb.bn(getApplicationContext(), "doWork sendBroadcast");
                b.l(applicationContext, "c.t.d.o.p.u");
                return z ? new aif() : new bhr();
            }
        } else {
            cbfVar = null;
        }
        return new bhr();
    }
}
