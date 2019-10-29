describe "Matcher output" do
  it { expect{puts "Juliana" }.to output.to_stdout }
  it { expect{print "Juliana" }.to output("Juliana").to_stdout }
  it { expect{puts "Juliana" }.to output(/Juliana/).to_stdout }

  it { expect{warn "Juliana" }.to output.to_stderr }
  it { expect{warn "Juliana" }.to output("Juliana\n").to_stderr }
  it { expect{warn "Juliana" }.to output(/Juliana/).to_stderr }
end