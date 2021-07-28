import React from "react";
import { screen, render } from "@testing-library/react";
import "@testing-library/jest-dom/extend-expect";

import ExchangeInput from "packs/components/exchange-input";

describe("ExchangeInput", () => {
  it("renders", () => {
    render(<ExchangeInput inputId="left-1" addPokemon={jest.fn()} />);
    expect(screen.getByText(/Base experience/)).toBeInTheDocument();
  });
});
