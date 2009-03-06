require File.join(File.dirname(__FILE__), %w[.. properties journal.rb])

module RiCal
  class Component
    #  A Journal (VJOURNAL) calendar component groups properties describing a journal entry.
    #  Journals may have multiple occurrences
    # to see the property accessing methods for this class see the RiCal::Properties::Journal module
    # to see the methods for enumerating occurrences of recurring journals see the RiCal::OccurrenceEnumerator module
    class Journal < Component
      include RiCal::Properties::Journal
      include RiCal::OccurrenceEnumerator

      def self.entity_name #:nodoc:
        "VJOURNAL"
      end
    end
  end
end