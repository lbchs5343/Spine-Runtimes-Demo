package com.bykv.vk.openvk.preload.dq.d.dq;

import com.bykv.vk.openvk.preload.dq.cd;
import com.bykv.vk.openvk.preload.dq.i;
import com.bykv.vk.openvk.preload.dq.r;
import java.io.IOException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes.dex */
public final class no extends r<Time> {
    public static final i dq = new i() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.no.1
        @Override // com.bykv.vk.openvk.preload.dq.i
        public final <T> r<T> dq(com.bykv.vk.openvk.preload.dq.iw iwVar, com.bykv.vk.openvk.preload.dq.ox.dq<T> dqVar) {
            if (dqVar.dq == Time.class) {
                return new no();
            }
            return null;
        }
    };

    /* renamed from: d, reason: collision with root package name */
    private final DateFormat f597d = new SimpleDateFormat("hh:mm:ss a");

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bykv.vk.openvk.preload.dq.r
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public synchronized Time dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
        if (dqVar.iw() == com.bykv.vk.openvk.preload.dq.p.d.NULL) {
            dqVar.no();
            return null;
        }
        try {
            return new Time(this.f597d.parse(dqVar.kk()).getTime());
        } catch (ParseException e2) {
            throw new cd(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bykv.vk.openvk.preload.dq.r
    public synchronized void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, Time time) throws IOException {
        oxVar.d(time == null ? null : this.f597d.format((Date) time));
    }
}
