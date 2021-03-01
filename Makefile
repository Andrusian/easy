stereo=./easy -f

.PHONY: test2
.PHONY: test
.PHONY: demo
.PHONY: clean

test2:
	$(stereo) test2/ts2a.e
	$(stereo) test2/ts2b.e
	$(stereo) test2/ts2c.e
	$(stereo) test2/ts2d.e
	$(stereo) test2/ts2e.e
	$(stereo) test2/ts2f.e
	$(stereo) test2/ts2g.e
	$(stereo) test2/ts2h.e
	$(stereo) test2/ts2i.e
	$(stereo) test2/ts2j.e
	$(stereo) test2/ts2k.e
	$(stereo) test2/ts2l.e
	$(stereo) test2/ts2o.e
	$(stereo) test2/ts2p.e
test:
	$(stereo) test/test_verysimple.e
	$(stereo) test/test_pitch.e
	$(stereo) test/test_pitch2.e
	$(stereo) test/test_amods.e
	$(stereo) test/test_fades.e
	$(stereo) test/test_macros.e
	$(stereo) test/test_phases.e
	$(stereo) test/test_sine.e
	$(stereo) test/test_stereo.e
	$(stereo) test/test_volramp.e
	$(stereo) test/test_lfobal.e
	$(stereo) test/test_lfopan.e
	$(stereo) test/test_phshort.e
	$(stereo) test/test_poly1.e
	$(stereo) test/test_poly2.e
	$(stereo) test/test_symbols.e
	$(stereo) test/test_load_sample.e
	$(stereo) test/test_load_sample_stereo.e
	$(stereo) test/test_echo.e
	$(stereo) test/test_shortclipcompress.e
	$(stereo) test/test_clipping.e
	$(stereo) test/test_notch.e
	$(stereo) test/test_resample.e
	$(stereo) test/test_bilfo.e
	$(stereo) test/test_phase_simple.e
	$(stereo) test/test_phshort.e
demo:
	$(stereo) demo/stella1.e
	$(stereo) demo/cleo2.e
	$(stereo) demo/maggie.e
	$(stereo) demo/summer1.e
	$(stereo) demo/jade.e
	$(stereo) demo/tracy.e
	$(stereo) demo/eva.e

clean:
	rm -rf aaa*.wav aaa*.mp3 ts2*.mp3


